`timescale 1ns/1ps
module i2c_master(
						sys_clk_12m,
						rst_n,
						scl,
						sda
						);
											
	input			sys_clk_12m;	//系统输入时钟，12M
	input			rst_n;			//复位信号，低电平有效
	output			scl;			//I2C时钟总线
	inout			sda;			//I2C数据总线
							
	wire	clk_div_100k;			//由分频module产生的时钟信号
	clk_div clk_div_inst(			//分频器
		.clk(sys_clk_12m),				
		.rst_n(rst_n),   
		.clkout(clk_div_100k)
		);						
	
	wire	[7:0]	wave_rom_address;
	wire	[7:0]	wave_rom_data;
	rom_waveform rom_waveform_inst (
		.Address( wave_rom_address ), 
		.OutClock( sys_clk_12m ), 
		.OutClockEn( 1'b1 ), 
		.Reset( 1'b0 ), 
		.Q( wave_rom_data )
		);

	wire	[7:0]	i2c_read_data;	//I2C读取数据
	wire	[7:0]	i2c_reg_data;	//I2C写入寄存器数据
	wire	[7:0]	i2c_reg_addr;	//I2C写入寄存器地址
	wire	[6:0]	i2c_dev_addr;	//从机设备地址
	wire	[7:0]	i2c_config;		//I2C模式配置信号
	wire	[7:0]	i2c_ack;		//I2C响应信号
	wire	[7:0]	state_debug;	//状态指示信号
	wire			i2c_done;		//读写完成信号，高电平有效
	i2c_master_config i2c_master_config_inst(   
		.clk_12m(sys_clk_12m),
		.rst_n(rst_n),
		.scl(scl),
		.sda(sda),
		.i2c_clk(clk_div_100k),
		.i2c_dev_addr(i2c_dev_addr),
		.i2c_reg_addr(i2c_reg_addr),
		.i2c_reg_data(i2c_reg_data),
		.i2c_read_data(i2c_read_data),
		.i2c_config(i2c_config),
		.i2c_ack(i2c_ack),
		.state_debug(state_debug),
		.i2c_done(i2c_done),
		.wave_rom_address(wave_rom_address),
		.wave_rom_data(wave_rom_data)
	);		
	
	


						
endmodule						