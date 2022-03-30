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
	
	input			clk_12m;			//系统时钟 = 12M
	input			rst_n;				//复位信号，低电平有效
	output			scl;				//I2C时钟信号
	inout			sda;				//I2C数据信号
	input			i2c_clk;			//时钟输入管脚，100K or 400K;	
	output	[7:0]	i2c_read_data;		//I2C读出数据
	output	[7:0]	i2c_config;			//I2C配置输入管脚
	output	[6:0]	i2c_dev_addr;		//I2C从机设备地址	
	output	[7:0]	i2c_reg_addr;		//I2C写入目标寄存器地址
	output	[7:0]	i2c_reg_data;		//I2C写入目标寄存器数据
	output	[7:0]	state_debug;		//I2C状态机指示
	output	[7:0]	i2c_ack;			//I2C响应位
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
	
	
	parameter		I2C_Wait					=	8'h00;	//I2C挂起SCL = 1，SDA = z;
	parameter		I2C_Single_Write_Byte		= 	8'h01;	//I2C单次写模式，起始--设备地址写-ACK-寄存器地址-ACK-寄存器数据-ACK-停止
	parameter		I2C_Continuous_Write_Byte	=	8'h02; 	//I2C连续写模式，起始--设备地址写-ACK-寄存器地址-ACK-寄存器数据-ACK-寄存器数据-ACK-寄存器数据-ACK····
	parameter		I2C_Write_Directly			=	8'h03; 	//I2C直接写入模式，起始--设备地址写-ACK-寄存器数据-ACK-停止
	parameter		I2C_Single_Read_Byte		=	8'h04; 	//I2C单次读模式，起始--设备地址写-ACK-寄存器地址-ACK-起始2-设备地址读-ACK-读取数据-NACK-停止
	parameter		I2C_Continuous_Read_Byte	=	8'h05; 	//I2C连续读模式，起始--设备地址写-ACK-寄存器地址-ACK-起始2-设备地址读-ACK-读取数据-ACK-读取数据-ACK-读取数据···
	parameter		I2C_Read_Directly			=	8'h06; 	//I2C直接读取模式，起始--设备地址写-ACK-起始2-设备地址读-ACK-读取数据-NACK-停止
	
	
	//利用两段式状态机对I2C通讯模式及参数进行配置。
	
	
	reg	[1:0]	i2c_state;		//I2C运行状态
	
	wire	i2c_flag;
	assign	i2c_flag = i2c_ack[2] | i2c_ack[5];
	
	//第一段描述状态跳变
	always@(posedge i2c_flag or negedge rst_n) begin 
		if(!rst_n) 
			i2c_state <= 8'h00;
		else if(i2c_state == 8'h02)
			i2c_state <= 8'h02;
		else 
			i2c_state <= i2c_state+ 1'b1;	
	end
	
	//第二段描述在对应状态中，对I2C运行模式与相关参数进行选择。
	
	reg		[7:0]	at24c02_00_data;
	
	reg		[6:0]	i2c_dev_addr;	//设备地址
	reg		[7:0]	i2c_reg_addr;	//寄存器地址
	reg		[7:0]	i2c_reg_data;	//寄存器数据(写入操作有效)
	reg		[7:0]	i2c_config;		//I2C工作模式配置寄存器
	always@(posedge clk_12m or negedge rst_n) begin 
		if(!rst_n) begin 
			i2c_config	<=	8'd0;
			i2c_dev_addr<=	7'd0;
			i2c_reg_addr<=	8'd0;
			i2c_reg_data<=	8'd0; end
		else begin 
			case(i2c_state)
				//状态0，单次写入模式，在AT24C02中的00地址写入BB
				0	:	begin	i2c_config		<= I2C_Single_Write_Byte;	
								i2c_dev_addr	<= 8'h50;
								i2c_reg_addr	<= 8'h00;		
								i2c_reg_data	<= 8'hBB;	end	
				//状态1，单次读取模式，读取AT24C02中的00地址的数据并将数据存储在寄存器中
				1	:	begin	i2c_config		<= I2C_Single_Read_Byte;	
								i2c_dev_addr	<= 8'h50;
								i2c_reg_addr	<= 8'h00;		
								at24c02_00_data	<= i2c_read_data;	end	
				//状态2，通讯完成，总线挂起
				2	:	begin	i2c_config		<= I2C_Wait;	end											
			default	:	begin 	i2c_config		<= 8'd0;	end				
			endcase
		end
	end
	
	
			    
endmodule
