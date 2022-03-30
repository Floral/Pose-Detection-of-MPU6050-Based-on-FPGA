module Kalman_Ctrl	(
					input   				clk_in,
					input   				rst_n,

					input					key_flag_in,
					input					calib_done,

					input					i2c_ack_2_pos_in,
					input					i2c_ack_5_pos_in,
					input					i2c_ack_6_pos_in,

					// input  		[7:0]		i2c_ack,
					input  		[7:0]		state_debug,
					// input		[7:0]		i2c_read_data,

					input					timer_tick_in,

					output   	[7:0]       i2c_config			,
                	output   	[6:0]       i2c_device_address	,
                	output   	[7:0]       i2c_reg_address		,
                	output   	[7:0]       i2c_write_reg_data	,
					output		[7:0]		i2c_data_num		,

					output		reg			config_done,
					output					timer_en_out
				);


	parameter		I2C_Wait					=	8'h00;	//I2C挂起SCL = 1，SDA = z;
	parameter		I2C_Single_Write_Byte		= 	8'h01;	//I2C单次写模式，起始--设备地址写-ACK-寄存器地址-ACK-寄存器数据-ACK-停止
	parameter		I2C_Continuous_Write_Byte	=	8'h02; 	//I2C连续写模式，起始--设备地址写-ACK-寄存器地址-ACK-寄存器数据-ACK-寄存器数据-ACK-寄存器数据-ACK····
	parameter		I2C_Write_Directly			=	8'h03; 	//I2C直接写入模式，起始--设备地址写-ACK-寄存器数据-ACK-停止
	parameter		I2C_Single_Read_Byte		=	8'h04; 	//I2C单次读模式，起始--设备地址写-ACK-寄存器地址-ACK-起始2-设备地址读-ACK-读取数据-NACK-停止
	parameter		I2C_Continuous_Read_Byte	=	8'h05; 	//I2C连续读模式，起始--设备地址写-ACK-寄存器地址-ACK-起始2-设备地址读-ACK-读取数据-ACK-读取数据-ACK-读取数据···
	parameter		I2C_Read_Directly			=	8'h06; 	//I2C直接读取模式，起始--设备地址写-ACK-起始2-设备地址读-ACK-读取数据-NACK-停止
	// parameter		I2C_Idle					=	8'h07;	//I2C挂起SCL = 1，SDA = z;

	parameter		KALMAN_WAIT					=	4'b0001;
	parameter		KALMAN_CONFIG				=	4'b0010;
	parameter		KALMAN_CALIBRATE			=	4'b0100;
	parameter		KALMAN_CALCULATE			=	4'b1000;

	parameter		CNT_NUM						=	'd5;

	reg		[3:0]		state_current;
	reg		[3:0]		state_next;

	reg		[6:0]		i2c_dev_addr_r	;			//设备地址
	reg		[7:0]		i2c_reg_addr_r	;			//寄存器地址
	reg		[7:0]		i2c_write_reg_data_r;		//寄存器数据(写入操作有效)
	reg		[7:0]		i2c_config_r	;			//I2C工作模式配置寄存器
	reg		[7:0]		i2c_data_num_r	;

	// reg					config_done		;

	wire				add_cnt;
	wire				end_cnt;
	
	assign	i2c_config			=		i2c_config_r;
	assign	i2c_device_address	= 		i2c_dev_addr_r;
	assign	i2c_reg_address		= 		i2c_reg_addr_r;
	assign	i2c_write_reg_data	= 		i2c_write_reg_data_r;
	assign	i2c_data_num		= 		i2c_data_num_r;

	reg		[2:0]		cnt;

	always @(posedge clk_in or negedge rst_n)begin
		if(!rst_n)begin
			cnt <= 0;
		end
		else if(add_cnt)begin
			if(end_cnt)
				cnt <= 0;
			else
				cnt <= cnt + 1;
		end
	end
	
	assign i2c_flag		=	i2c_ack_2_pos_in | i2c_ack_5_pos_in;
	assign add_cnt 		= 	i2c_flag & (state_current == KALMAN_CONFIG);       
	assign end_cnt 		= 	add_cnt && cnt==(CNT_NUM-1) ;
	
	// assign	i2c_flag		=	i2c_ack[2] | i2c_ack[5];
	/*
	reg		[10:0]		cnt_num;
	always  @(*)begin
		case (state_current)
			KALMAN_CONFIG	:	begin	cnt_num	=	5	;	end
			KALMAN_CALIBRATE:	begin	cnt_num	=	1024;	end
			default			:	begin	cnt_num =	1	;	end
		endcase
	end
	*/	
	// 三段式状态机,第一段,描述状态转移
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			state_current	<=	KALMAN_WAIT;
		end
		else begin
			state_current	<=	state_next;
		end
	end
	
	// 状态机第二段, 描述下一状态
	always  @(*)begin
		state_next	=	KALMAN_WAIT;
		case (state_current)
			KALMAN_WAIT		: begin	
				if (key_flag_in)
					state_next	=	KALMAN_CONFIG;
				else
					state_next	=	KALMAN_WAIT;
			end
			KALMAN_CONFIG	: begin
				if (config_done)
					state_next	=	KALMAN_CALIBRATE;
				else
					state_next	=	KALMAN_CONFIG;
			end

			KALMAN_CALIBRATE: begin	
				if (calib_done)
					state_next	=	KALMAN_CALCULATE;
				else
					state_next	=	KALMAN_CALIBRATE;
			end

			KALMAN_CALCULATE: begin	
				if (key_flag_in)
					state_next	=	KALMAN_WAIT;
				else
					state_next	=	KALMAN_CALCULATE;
			end
			default: begin
				state_next	=	state_next;
			end
		endcase
	end


/*
	always @(posedge i2c_flag or negedge rst_n)begin
		if(!rst_n)begin
			cnt <= 0;
		end
		else if(end_cnt)begin
			cnt <= 0;
		end 
		else begin
			cnt <= cnt + 1;
		end
	end

	assign	end_cnt	=	cnt == (cnt_num-1);
*/
	// 描述输出
	
	assign	timer_en_out	=	(state_next == KALMAN_CALCULATE);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
            i2c_config_r			<=		I2C_Wait;
			i2c_dev_addr_r			<=		1'b0;
            i2c_reg_addr_r 			<=		1'b0;
            i2c_write_reg_data_r	<=		1'b0;
            i2c_data_num_r			<=		1'b0;
		end
		else begin
			case (state_current)
				KALMAN_WAIT		:	begin	i2c_config_r			<=		I2C_Wait;
		                                    i2c_dev_addr_r			<=		1'b0;
		                                    i2c_reg_addr_r 			<=		1'b0;
		                                    i2c_write_reg_data_r	<=		1'b0;
		                                    i2c_data_num_r			<=		1'b0;
									end
				KALMAN_CONFIG	:	begin	i2c_config_r			<=		I2C_Single_Write_Byte;
		                                    i2c_dev_addr_r			<=		7'h68;
											case (cnt)
												0		:	begin	i2c_reg_addr_r 			<=		8'h6B;
																	i2c_write_reg_data_r	<=		8'h00;
																    i2c_data_num_r			<=		8'h01;
															end		
												1		:	begin	i2c_reg_addr_r 			<=		8'h19;
                                                                    i2c_write_reg_data_r	<=		8'h07;
                                                                    i2c_data_num_r			<=		8'h01;
                                                            end		
												2		:	begin	i2c_reg_addr_r 			<=		8'h1A;
                                                                    i2c_write_reg_data_r	<=		8'h06;
                                                                    i2c_data_num_r			<=		8'h01;
												            end		
												3		:	begin	i2c_reg_addr_r 			<=		8'h1B;
                                                                    i2c_write_reg_data_r	<=		8'h10;
                                                                    i2c_data_num_r			<=		8'h01;
                                                            end		
												4		:	begin	i2c_reg_addr_r 			<=		8'h1C;
                                                                    i2c_write_reg_data_r	<=		8'h00;
                                                                    i2c_data_num_r			<=		8'h01;
                                                            end		
												default	:	begin	i2c_reg_addr_r 			<=		8'h00;
                                                                    i2c_write_reg_data_r	<=		8'h00;
                                                                    i2c_data_num_r			<=		8'h01;
                                                            end		
											endcase
									end
				KALMAN_CALIBRATE:	begin	i2c_config_r	<=		I2C_Continuous_Read_Byte;
											i2c_dev_addr_r	<=		7'h68;
											i2c_reg_addr_r	<=		8'h3B;
											i2c_data_num_r	<=		8'h0E;
									end
				KALMAN_CALCULATE:	begin	if (timer_tick_in)			i2c_config_r	<=	I2C_Continuous_Read_Byte;
											else if (i2c_ack_6_pos_in)	i2c_config_r	<=	I2C_Wait;
											else						i2c_config_r	<=	i2c_config_r;
											// i2c_config_r	<=		I2C_Continuous_Read_Byte;
		                                    i2c_dev_addr_r	<=		7'h68;
		                                    i2c_reg_addr_r	<=		8'h3B;
		                                    i2c_data_num_r	<=		8'h0E;
									end
				default			:	begin	i2c_config_r			<=		I2C_Wait;
		                                    i2c_dev_addr_r			<=		1'b0;
		                                    i2c_reg_addr_r 			<=		1'b0;
		                                    i2c_write_reg_data_r	<=		1'b0;
		                                    i2c_data_num_r			<=		1'b1;
									end
			endcase
		end
	end

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			config_done		<=		1'b0;
		end
		else begin
			case (state_current)
				KALMAN_CONFIG	:	begin	if (end_cnt)		 
												config_done	<=	1'b1;
											else
												config_done	<=	config_done;
									end
				KALMAN_CALCULATE:	begin 	if (key_flag_in)
												config_done	<=	1'b0;
											else
												config_done	<=	config_done;
									end
				default			:	begin	config_done		<=	config_done;
									end
			endcase
		end
	end

endmodule
