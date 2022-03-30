module i2c_master_config(
							clk_12m,
							rst_n,
							scl,
							sda,
							i2c_clk,
							i2c_dev_addr,
							i2c_reg_addr,
							i2c_reg_data,
							i2c_read_data,
							i2c_config,
							i2c_ack,
							state_debug,
							at24c02_00_data
							);
	
	input			clk_12m;			//ϵͳʱ�� = 12M
	input			rst_n;				//��λ�źţ��͵�ƽ��Ч
	output			scl;				//I2Cʱ���ź�
	inout			sda;				//I2C�����ź�
	input			i2c_clk;			//ʱ������ܽţ�100K or 400K;	
	output	[7:0]	i2c_read_data;		//I2C��������
	output	[7:0]	i2c_config;			//I2C��������ܽ�
	output	[6:0]	i2c_dev_addr;		//I2C�ӻ��豸��ַ	
	output	[7:0]	i2c_reg_addr;		//I2Cд��Ŀ��Ĵ�����ַ
	output	[7:0]	i2c_reg_data;		//I2Cд��Ŀ��Ĵ�������
	output	[7:0]	state_debug;		//I2C״̬��ָʾ
	output	[7:0]	i2c_ack;			//I2C��Ӧλ
	output	[7:0]	at24c02_00_data;

	i2c_master_logic i2c_master_logic_inst(
		.clk_in(i2c_clk),
		.rst_n(rst_n),
		.scl(scl),
		.sda(sda),
		.i2c_read_data(i2c_read_data),
		.i2c_device_address(i2c_dev_addr),
		.i2c_reg_address(i2c_reg_addr),
		.i2c_write_reg_data(i2c_reg_data),
		.state_debug(state_debug),
		.i2c_config(i2c_config),
		.i2c_ack(i2c_ack)
		);
	
	
	parameter		I2C_Wait					=	8'h00;	//I2C����SCL = 1��SDA = z;
	parameter		I2C_Single_Write_Byte		= 	8'h01;	//I2C����дģʽ����ʼ--�豸��ַд-ACK-�Ĵ�����ַ-ACK-�Ĵ�������-ACK-ֹͣ
	parameter		I2C_Continuous_Write_Byte	=	8'h02; 	//I2C����дģʽ����ʼ--�豸��ַд-ACK-�Ĵ�����ַ-ACK-�Ĵ�������-ACK-�Ĵ�������-ACK-�Ĵ�������-ACK��������
	parameter		I2C_Write_Directly			=	8'h03; 	//I2Cֱ��д��ģʽ����ʼ--�豸��ַд-ACK-�Ĵ�������-ACK-ֹͣ
	parameter		I2C_Single_Read_Byte		=	8'h04; 	//I2C���ζ�ģʽ����ʼ--�豸��ַд-ACK-�Ĵ�����ַ-ACK-��ʼ2-�豸��ַ��-ACK-��ȡ����-NACK-ֹͣ
	parameter		I2C_Continuous_Read_Byte	=	8'h05; 	//I2C������ģʽ����ʼ--�豸��ַд-ACK-�Ĵ�����ַ-ACK-��ʼ2-�豸��ַ��-ACK-��ȡ����-ACK-��ȡ����-ACK-��ȡ���ݡ�����
	parameter		I2C_Read_Directly			=	8'h06; 	//I2Cֱ�Ӷ�ȡģʽ����ʼ--�豸��ַд-ACK-��ʼ2-�豸��ַ��-ACK-��ȡ����-NACK-ֹͣ
	
	
	//��������ʽ״̬����I2CͨѶģʽ�������������á�
	
	
	reg	[1:0]	i2c_state;		//I2C����״̬
	
	wire	i2c_flag;
	assign	i2c_flag = i2c_ack[2] | i2c_ack[5];
	
	//��һ������״̬����
	always@(posedge i2c_flag or negedge rst_n) begin 
		if(!rst_n) 
			i2c_state <= 8'h00;
		else if(i2c_state == 8'h02)
			i2c_state <= 8'h02;
		else 
			i2c_state <= i2c_state+ 1'b1;	
	end
	
	//�ڶ��������ڶ�Ӧ״̬�У���I2C����ģʽ����ز�������ѡ��
	
	reg		[7:0]	at24c02_00_data;
	
	reg		[6:0]	i2c_dev_addr;	//�豸��ַ
	reg		[7:0]	i2c_reg_addr;	//�Ĵ�����ַ
	reg		[7:0]	i2c_reg_data;	//�Ĵ�������(д�������Ч)
	reg		[7:0]	i2c_config;		//I2C����ģʽ���üĴ���
	always@(posedge clk_12m or negedge rst_n) begin 
		if(!rst_n) begin 
			i2c_config	<=	8'd0;
			i2c_dev_addr<=	7'd0;
			i2c_reg_addr<=	8'd0;
			i2c_reg_data<=	8'd0; end
		else begin 
			case(i2c_state)
				//״̬0������д��ģʽ����AT24C02�е�00��ַд��BB
				0	:	begin	i2c_config		<= I2C_Single_Write_Byte;	
								i2c_dev_addr	<= 8'h50;
								i2c_reg_addr	<= 8'h00;		
								i2c_reg_data	<= 8'hBB;	end	
				//״̬1�����ζ�ȡģʽ����ȡAT24C02�е�00��ַ�����ݲ������ݴ洢�ڼĴ�����
				1	:	begin	i2c_config		<= I2C_Single_Read_Byte;	
								i2c_dev_addr	<= 8'h50;
								i2c_reg_addr	<= 8'h00;		
								at24c02_00_data	<= i2c_read_data;	end	
				//״̬2��ͨѶ��ɣ����߹���
				2	:	begin	i2c_config		<= I2C_Wait;	end											
			default	:	begin 	i2c_config		<= 8'd0;	end				
			endcase
		end
	end
	
	
			    
endmodule
