[ActiveSupport MAP]
Device = LCMXO2-4000HC;
Package = CSBGA132;
Performance = 4;
LUTS_avail = 4320;
LUTS_used = 256;
FF_avail = 4425;
FF_used = 89;
INPUT_LVCMOS33 = 2;
OUTPUT_LVCMOS33 = 1;
BIDI_LVCMOS33 = 1;
IO_avail = 105;
IO_used = 4;
EBR_avail = 10;
EBR_used = 1;
; Begin EBR Section
Instance_Name = rom_waveform_inst/rom_waveform_0_0_0;
Type = DP8KC;
Width_A = 8;
Depth_A = 256;
REGMODE_A = OUTREG;
REGMODE_B = NOREG;
RESETMODE = SYNC;
ASYNC_RESET_RELEASE = SYNC;
WRITEMODE_A = NORMAL;
WRITEMODE_B = NORMAL;
GSR = ENABLED;
MEM_INIT_FILE = rom_waveform.mem;
MEM_LPC_FILE = rom_waveform.lpc;
; End EBR Section
