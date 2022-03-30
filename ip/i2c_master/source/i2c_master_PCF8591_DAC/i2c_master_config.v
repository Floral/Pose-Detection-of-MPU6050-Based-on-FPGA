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
							i2c_done,
							wave_rom_address,
							wave_rom_data
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
	output			i2c_done;			//读写完成位
	output	[7:0]	state_debug;		//I2C状态机指示
	output	[7:0]	i2c_ack;			//I2C响应位
	output	[7:0]	wave_rom_address;
	input	[7:0]	wave_rom_data;
	
	i2c_master_logic i2c_master_logic_inst(
		.clk_in(i2c_clk),
		.rst_n(rst_n),
		.scl(scl),
		.sda(sda),
		.i2c_read_data(i2c_read_data),
		.i2c_device_address(i2c_dev_addr),
		.i2c_reg_address(i2c_reg_addr),
		.i2c_write_reg_data(i2c_reg_data),
		.write_done(write_done),
		.read_done(read_done),
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
	
	reg	[7:0]	wave_rom_address;
	always@(posedge i2c_ack[2] or negedge rst_n) begin 
		if(!rst_n) 
			wave_rom_address <= 1'b0;
		else 
			wave_rom_address <= wave_rom_address + 1'b1;
		end
	
	//利用两段式状态机对I2C通讯模式及参数进行配置。
	reg	[3:0]	i2c_state;		//I2C运行状态
	
	wire	i2c_flag;
	assign	i2c_flag = i2c_ack[2] | i2c_ack[5];
	
	//第一段描述状态跳变
	always@(posedge i2c_flag or negedge rst_n) begin 
		if(!rst_n) 
			i2c_state <= 8'h00;
		else if(i2c_state == 8'h00)
			i2c_state <= 8'h00;
		else 
			i2c_state <= i2c_state;
			//+ 1'b1;	
	end
	
	//第二段描述在对应状态中，对I2C运行模式与相关参数进行选择。
	reg		[6:0]	i2c_dev_addr;
	reg		[7:0]	i2c_reg_addr;
	reg		[7:0]	i2c_reg_data;
	reg		[7:0]	i2c_config;
	always@(posedge clk_12m or negedge rst_n) begin 
		if(!rst_n) begin 
			i2c_config	<=	8'd0;
			i2c_dev_addr<=	7'd0;
			i2c_reg_addr<=	8'd0;
			i2c_reg_data<=	8'd0; end
		else begin 
			case(i2c_state)
				0	:	begin	i2c_config		<= I2C_Continuous_Write_Byte;	
								i2c_dev_addr	<= 8'h48;
								i2c_reg_addr	<= 8'h40;		
								i2c_reg_data	<= wave_rom_data;	end									
			default	:	begin 	i2c_config		<= 8'd0;	end				
			endcase
		end
	end
	
	
			    
endmodule
