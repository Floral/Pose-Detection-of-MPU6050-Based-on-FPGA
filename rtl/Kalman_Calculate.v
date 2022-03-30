module	Kalman_Calculate(
		input						clk_in	,
		input						rst_n	,
		input						calib_done_in	,

		input 	signed	[15:0] 		acc_x_bias_in	,
    	input 	signed	[15:0] 		acc_y_bias_in	,
    	input 	signed	[15:0] 		acc_z_bias_in	,
    	input 	signed	[15:0] 		temp_bias_in	,
    	input 	signed	[15:0] 		gyro_x_bias_in	,
    	input 	signed	[15:0] 		gyro_y_bias_in	,
    	input 	signed	[15:0] 		gyro_z_bias_in	,

		input	signed 	[15:0] 		acc_x_in	,
    	input	signed 	[15:0] 		acc_y_in	,
    	input	signed 	[15:0] 		acc_z_in	,
    	input	signed 	[15:0] 		temp_in		,
    	input	signed 	[15:0] 		gyro_x_in	,
    	input	signed 	[15:0] 		gyro_y_in	,
    	input	signed 	[15:0] 		gyro_z_in	,

		input						acc_rdy_pos_in	,
		input						gyro_rdy_pos_in	,

		output	signed	[31:0]		angle_opt_out,
		output						roll_opt_vld_out, 
        output						pitch_opt_vld_out

	);

	parameter					CNT_MAX = 3;

	wire						calc_en;	// 整个calc模块的使能
	reg							calc_g_en;	// 计算g的使能
	
	reg							calib_done_ff;
	wire						calib_done_pos_in;

	reg				[2:0]		cnt;
	wire						add_cnt;
	wire						end_cnt;
	
	wire						g_out_vld_0;
	wire						g_out_vld_1;
	wire						g_out_vld_2;

	reg		signed	[15:0]		acc_x_rect;
	reg		signed	[15:0]		acc_y_rect;
	reg		signed	[15:0]		acc_z_rect;
	reg		signed	[15:0]		temp_rect;
	reg		signed	[15:0]		gyro_x_rect;
	reg		signed	[15:0]		gyro_y_rect;
	reg		signed	[15:0]		gyro_z_rect;

	reg		signed	[31:0]		acc_x_rect_2;
	reg		signed	[31:0]		acc_y_rect_2;
	reg		signed	[31:0]		acc_z_rect_2;

	reg		signed	[31:0]		roll_out_r;
	reg		signed	[31:0]		pitch_out_r;

	// acc_x_rect_2 肯定是正数，所以用31位就可以表示，但是g是三个数相加，所以
	// 要扩展两位
	reg				[32:0]		g_int;
	reg				[32:0]		g_xz_int;
	reg				[32:0]		g_yz_int;

	wire			[16:0]		g_sqrt_out;
	wire			[16:0]		g_xz_sqrt_out;
	wire			[16:0]		g_yz_sqrt_out;

	reg							g_in_vld;

	// 定点数fixed-point
	wire	signed	[32:0]		g_fp;
	wire	signed	[32:0]		g_xz_fp;
	wire	signed	[32:0]		g_yz_fp;

	wire	signed	[48:0]		cos_val_0;	
	wire	signed	[48:0]		cos_val_1;	

	wire						cos_val_vld_0;
	wire						cos_val_vld_1;

	wire	signed	[31:0]		roll_cos_val;
	wire						roll_out_rdy;
	wire	signed	[31:0]		roll_arcsin_out;
	wire	signed	[31:0]		roll_arccos_out;

	wire	signed	[31:0]		pitch_cos_val;
	wire						pitch_out_rdy;
	wire	signed	[31:0]		pitch_arcsin_out;
	wire	signed	[31:0]		pitch_arccos_out;

	wire	signed	[31:0]		roll;
	wire	signed	[31:0]		pitch;

	wire	signed	[31:0]		gyro_x_fp;
	wire	signed	[31:0]		gyro_y_fp;
	wire	signed	[31:0]		gyro_z_fp;

	reg		signed	[49:0]		gyro_x_rect_fp;
	reg		signed	[49:0]		gyro_y_rect_fp;
	reg		signed	[49:0]		gyro_z_rect_fp;

	reg		signed	[49:0]		gyro_x_fp_temp;
	reg		signed	[49:0]		gyro_y_fp_temp;
	reg		signed	[49:0]		gyro_z_fp_temp;

	reg							gyro_fp_rdy;

	assign	calc_en	=	calib_done_in;

	// 脉冲展宽电路
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)
			calc_g_en	<=	1'b0;
		else if (calc_en & acc_rdy_pos_in) 
			calc_g_en	<=	1'b1;
		else if (end_cnt) 
			calc_g_en	<=	1'b0;
		else
			calc_g_en	<=	calc_g_en;
	end

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
		else
			cnt	<=	cnt;
	end
	
	assign add_cnt = calc_en & calc_g_en;       
	assign end_cnt = add_cnt && cnt==(CNT_MAX-1) ;   

	// g值有效信号
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)
			g_in_vld	<=	1'b0;
		else if (end_cnt) 
			g_in_vld	<=	1'b1;
		else
			g_in_vld	<=	1'b0;
	end

	
	// 修正后的数据
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			acc_x_rect	<=	1'b0; 
            acc_y_rect	<=  1'b0; 
            acc_z_rect	<=  1'b0; 
            temp_rect	<=  1'b0; 
            gyro_x_rect	<=  1'b0;
            gyro_y_rect	<=  1'b0;
            gyro_z_rect	<=  1'b0;
		end
		else if (calc_en) begin
			acc_x_rect	<=	acc_x_in - acc_x_bias_in;
            acc_y_rect	<=	acc_y_in - acc_y_bias_in;
            acc_z_rect	<=	acc_z_in - acc_z_bias_in;
            temp_rect	<=	temp_in	 - temp_bias_in ;
            gyro_x_rect	<=	gyro_x_in - gyro_x_bias_in;
            gyro_y_rect	<=	gyro_y_in - gyro_y_bias_in;
            gyro_z_rect	<=	gyro_z_in - gyro_z_bias_in;
		end else begin
			acc_x_rect	<=	acc_x_rect	; 
            acc_y_rect	<=  acc_y_rect	; 
            acc_z_rect	<=  acc_z_rect	; 
            temp_rect	<=  temp_rect 	; 
            gyro_x_rect	<=  gyro_x_rect	;
            gyro_y_rect	<=  gyro_y_rect	;
            gyro_z_rect	<=  gyro_z_rect	;
		end
	end

	// 先求平方
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			acc_x_rect_2	<=	1'b0;
			acc_y_rect_2	<=	1'b0;
			acc_z_rect_2	<=	1'b0;
		end
		else if (calc_g_en) begin
			acc_x_rect_2	<=	acc_x_rect * acc_x_rect;
			acc_y_rect_2	<=	acc_y_rect * acc_y_rect;
			acc_z_rect_2	<=	acc_z_rect * acc_z_rect;
		end else begin
			acc_x_rect_2	<=	acc_x_rect_2;
			acc_y_rect_2	<=	acc_y_rect_2;
			acc_z_rect_2	<=	acc_z_rect_2;
		end
	end

	// 再求和
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			g_int		<=	1'b0;
			g_xz_int	<=	1'b0;
			g_yz_int	<=	1'b0;
		end
		else if (calc_g_en) begin
			g_int		<=	acc_x_rect_2[30:0] + acc_y_rect_2[30:0] + acc_z_rect_2[30:0];
			g_xz_int	<=	acc_x_rect_2[30:0] + acc_z_rect_2[30:0];
			g_yz_int	<=	acc_y_rect_2[30:0] + acc_z_rect_2[30:0];
		end 
		else begin
			g_int		<=	g_int	;
			g_xz_int	<=	g_xz_int;
			g_yz_int	<=	g_yz_int;
		end
	end

	square_root 
	u_square_root_0 (
		.aclk						(clk_in),
		.aresetn					(rst_n),
		.s_axis_cartesian_tvalid  	(g_in_vld),
    	.s_axis_cartesian_tdata  	(g_int),
    	.m_axis_dout_tvalid  		(g_out_vld_0),
    	.m_axis_dout_tdata			(g_sqrt_out)
	);

	square_root 
	u_square_root_1 (
		.aclk						(clk_in),
		.aresetn					(rst_n),
		.s_axis_cartesian_tvalid  	(g_in_vld),
    	.s_axis_cartesian_tdata  	(g_xz_int),
    	.m_axis_dout_tvalid  		(g_out_vld_1),
    	.m_axis_dout_tdata			(g_xz_sqrt_out)
	);

	square_root 
	u_square_root_2 (
		.aclk						(clk_in),
		.aresetn					(rst_n),
		.s_axis_cartesian_tvalid  	(g_in_vld),
    	.s_axis_cartesian_tdata  	(g_yz_int),
    	.m_axis_dout_tvalid  		(g_out_vld_2),
    	.m_axis_dout_tdata			(g_yz_sqrt_out)	//结果是17位正整数
	);

	// 补充小数部分16bit,33位定点数
	assign	g_fp	=	{g_sqrt_out		, 16'b0} >> 14;		// 除以16384, 右移14位
	assign	g_xz_fp	=	{g_xz_sqrt_out	, 16'b0} >> 14;		//虽然fp是有符号的，但这里还是用的逻辑位移，因为sqrt_out肯定是正的
	assign	g_yz_fp	=	{g_yz_sqrt_out	, 16'b0} >> 14;

	div_gen u_div_gen_0(
 		.aclk                    	(clk_in),
		.aresetn					(rst_n),
 		.s_axis_divisor_tvalid   	(g_out_vld_0),
 		.s_axis_divisor_tdata    	(g_fp),
 		.s_axis_dividend_tvalid  	(g_out_vld_1),
 		.s_axis_dividend_tdata   	(g_xz_fp),
 		.m_axis_dout_tvalid      	(cos_val_vld_0),
 		.m_axis_dout_tdata       	(cos_val_0)
	); 

	div_gen u_div_gen_1(
 		.aclk                    	(clk_in),
		.aresetn					(rst_n),
 		.s_axis_divisor_tvalid   	(g_out_vld_0),
 		.s_axis_divisor_tdata    	(g_fp),
 		.s_axis_dividend_tvalid  	(g_out_vld_2),
 		.s_axis_dividend_tdata   	(g_yz_fp),
 		.m_axis_dout_tvalid      	(cos_val_vld_1),
 		.m_axis_dout_tdata       	(cos_val_1)
	); 

	// 大于1直接取1
	assign	roll_cos_val	=	(cos_val_0[16] == 1'b1) ? 32'h0001_0000 : {{15{1'b0}}, cos_val_0[16:0]};
	assign	pitch_cos_val	=	(cos_val_1[16] == 1'b1) ? 32'h0001_0000 : {{15{1'b0}}, cos_val_1[16:0]};

	cordic_arcsin_arccos u_cordic_arcsin_arccos_0(
		.clk_in       	(clk_in       	),
   		.rst_n        	(rst_n        	),
   		.data_in_rdy  	(cos_val_vld_0	),
   		.data_in      	(roll_cos_val 	),
   		.data_out_rdy 	(roll_out_rdy 	),
   		.arcsin_out   	(roll_arcsin_out),
   		.arccos_out   	(roll_arccos_out)
	);

	cordic_arcsin_arccos u_cordic_arcsin_arccos_1(
		.clk_in       	(clk_in       		),
   		.rst_n        	(rst_n        		),
   		.data_in_rdy  	(cos_val_vld_1 		),
   		.data_in      	(pitch_cos_val 		),
   		.data_out_rdy 	(pitch_out_rdy 		),
   		.arcsin_out   	(pitch_arcsin_out  	),
   		.arccos_out   	(pitch_arccos_out  	)
	);

	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			roll_out_r	<=	1'b0;
			pitch_out_r	<=	1'b0;
		end
		else if (roll_out_rdy)begin
			roll_out_r	<=	(acc_y_rect[15]==1'b0) ? -roll_arccos_out : roll_arccos_out;	// y>0
			pitch_out_r	<=	(acc_x_rect[15]==1'b0) ? -pitch_arccos_out : pitch_arccos_out;	// x<0
		end
		else begin
			roll_out_r	<=	roll_out_r ;
			pitch_out_r	<=	pitch_out_r;
		end
	end

	assign	roll	=	roll_out_r;
	assign	pitch	=	pitch_out_r;

	assign	angle_out_rdy	=	roll_out_rdy;

	reg		[2:0]		i;
	// gyro转实数,除以常数32.8
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			i	<=	1'b0;
			// gyro_x_fp	<=	1'b0;
			// gyro_y_fp	<=	1'b0;
			// gyro_z_fp	<=	1'b0;
			gyro_x_rect_fp	<=	1'b0;	
            gyro_y_rect_fp	<=	1'b0;
            gyro_z_rect_fp	<=	1'b0;
			gyro_x_fp_temp	<=	1'b0;	
            gyro_y_fp_temp	<=	1'b0;
            gyro_z_fp_temp	<=	1'b0;
			gyro_fp_rdy		<=	1'b0;
		end
		else begin
			case (i)
				0:	begin
					gyro_fp_rdy		<=	1'b0;
					// gyro_x_fp	<=	1'b0;
					// gyro_y_fp	<=	1'b0;
					// gyro_z_fp	<=	1'b0;
					gyro_x_rect_fp	<=	{ {18{gyro_x_rect[15]}}, gyro_x_rect, {16'h0000} };	// 精度补偿16位, 16+16+18=50位
					gyro_y_rect_fp	<=	{ {18{gyro_y_rect[15]}}, gyro_y_rect, {16'h0000} };
					gyro_z_rect_fp	<=	{ {18{gyro_z_rect[15]}}, gyro_z_rect, {16'h0000} };
					gyro_x_fp_temp	<=	gyro_x_fp_temp;		// 保持上一次的结果
            		gyro_y_fp_temp	<=	gyro_y_fp_temp;
            		gyro_z_fp_temp	<=	gyro_z_fp_temp;
					if (calc_en & gyro_rdy_pos_in) i	<=	i + 1;	// 因为rdy_pos是延迟了一个周期才到的，所以此时rect已经是最新的了
					else	i	<=	i;

				end

				1:	begin
					gyro_x_fp_temp	<=	(gyro_x_rect_fp <<< 17) - (gyro_x_rect_fp <<< 11) - (gyro_x_rect_fp <<< 10);	// 这里加减法要不要扩展位数呢？当rect是正负最大值的时候可能会溢出
                    gyro_y_fp_temp	<=	(gyro_y_rect_fp <<< 17) - (gyro_y_rect_fp <<< 11) - (gyro_y_rect_fp <<< 10);
                    gyro_z_fp_temp	<=	(gyro_z_rect_fp <<< 17) - (gyro_z_rect_fp <<< 11) - (gyro_z_rect_fp <<< 10);
					i	<=	i + 1;
				end
				2: 	begin
					gyro_x_fp_temp	<=	gyro_x_fp_temp  - (gyro_x_rect_fp <<< 7) + (gyro_x_rect_fp <<< 1) + gyro_x_rect_fp;	
                    gyro_y_fp_temp	<=	gyro_y_fp_temp  - (gyro_y_rect_fp <<< 7) + (gyro_y_rect_fp <<< 1) + gyro_y_rect_fp;
                    gyro_z_fp_temp	<=	gyro_z_fp_temp  - (gyro_z_rect_fp <<< 7) + (gyro_z_rect_fp <<< 1) + gyro_z_rect_fp;
					i	<=	i + 1;
				end
				3:	begin
					gyro_x_fp_temp	<=	gyro_x_fp_temp + (gyro_x_fp_temp >>> 20);	// 注意这里右移一定要加括号，不然就是先算加法再算位移了
                    gyro_y_fp_temp	<=	gyro_y_fp_temp + (gyro_y_fp_temp >>> 20);
                    gyro_z_fp_temp	<=	gyro_z_fp_temp + (gyro_z_fp_temp >>> 20);
					i	<=	i + 1;
				end
				4:	begin
					gyro_x_fp_temp	<=	(gyro_x_fp_temp >>>	22);
                    gyro_y_fp_temp	<=	(gyro_y_fp_temp >>>	22);
                    gyro_z_fp_temp	<=	(gyro_z_fp_temp >>>	22);
					gyro_fp_rdy	<=	1'b1;
					i	<=	0;
				end
			endcase
		end
	end
	
	assign	gyro_x_fp	=	gyro_x_fp_temp[31:0];
    assign	gyro_y_fp	=	gyro_y_fp_temp[31:0];
    assign	gyro_z_fp	=	gyro_z_fp_temp[31:0];


	// calib_done的边沿检测
	always  @(posedge clk_in or negedge rst_n)begin
		if(rst_n==1'b0)begin
			calib_done_ff	<=	1'b0;
		end
		else begin
			calib_done_ff	<=	calib_done_in;
		end
	end

	assign	calib_done_pos_in	=	(!calib_done_ff) && calib_done_in;

	Kalman_Iter_Unit 
	U_KALMAN_ITER_UNIT_0
	(  .clk_in            (clk_in           ),
	   .rst_n             (rst_n            ),
	   .gyro_x_bias_in    (gyro_x_bias_in   ),
	   .gyro_y_bias_in    (gyro_y_bias_in   ),
	   .roll_in           (roll          	),
	   .gyro_x_in         (gyro_x_fp        ),
	   .pitch_in          (pitch         	),
	   .gyro_y_in         (gyro_y_fp        ),
	   .gyro_fp_vld_in    (gyro_fp_rdy	    ),
	   .calib_done_pos_in (calib_done_pos_in),

	   .angle_opt_out     (angle_opt_out    ),
	   .roll_opt_vld_out  (roll_opt_vld_out ),
	   .pitch_opt_vld_out (pitch_opt_vld_out));
	
	

endmodule
