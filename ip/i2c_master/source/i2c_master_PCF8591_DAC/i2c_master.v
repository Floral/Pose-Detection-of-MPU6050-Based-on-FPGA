`timescale 1ns/1ps
module i2c_master(
						sys_clk_12m,
						rst_n,
						scl,
						sda
						);
											
	input			sys_clk_12m;	//ϵͳ����ʱ�ӣ�12M
	input			rst_n;			//��λ�źţ��͵�ƽ��Ч
	output			scl;			//I2Cʱ������
	inout			sda;			//I2C��������
							
	wire	clk_div_100k;			//�ɷ�Ƶmodule������ʱ���ź�
	clk_div clk_div_inst(			//��Ƶ��
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

	wire	[7:0]	i2c_read_data;	//I2C��ȡ����
	wire	[7:0]	i2c_reg_data;	//I2Cд��Ĵ�������
	wire	[7:0]	i2c_reg_addr;	//I2Cд��Ĵ�����ַ
	wire	[6:0]	i2c_dev_addr;	//�ӻ��豸��ַ
	wire	[7:0]	i2c_config;		//I2Cģʽ�����ź�
	wire	[7:0]	i2c_ack;		//I2C��Ӧ�ź�
	wire	[7:0]	state_debug;	//״ָ̬ʾ�ź�
	wire			i2c_done;		//��д����źţ��ߵ�ƽ��Ч
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