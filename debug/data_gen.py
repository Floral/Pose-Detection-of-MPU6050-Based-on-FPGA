import random

def gen_for_data_packing():
    with open(r'.\roll_data.hex', "w") as f:
        for i in range(128):
            data = random.randint(-200, 200)
            # print(str(data)+" %04X"% (data & 0xffff))
            f.write("%04X\n" % (data & 0xffff))

    with open(r'.\pitch_data.hex', "w") as f:
        for i in range(128):
            data = random.randint(-250, 250)
            # print(str(data)+" %04X"% (data & 0xffff))
            f.write("%04X\n" % (data & 0xffff))

def gen_for_iter_uint():
    with open(r'.\roll_data_for_iter.hex', "w") as f:
        for i in range(128):
            data = 25216+random.randint(-2000, 2000)
            # print(str(data)+" %04X"% (data & 0xffff))
            f.write("%08X\n" % (data & 0xffffffff))

    with open(r'.\pitch_data_for_iter.hex', "w") as f:
        for i in range(128):
            data = -25216+random.randint(-2500, 2500)
            # print(str(data)+" %04X"% (data & 0xffff))
            f.write("%08X\n" % (data & 0xffffffff))
            
    with open(r'.\gyro_x_data_for_iter.hex', "w") as f:
        for i in range(128):
            data = -7993+random.randint(-1000, 1000)
            # print(str(data)+" %04X"% (data & 0xffff))
            f.write("%08X\n" % (data & 0xffffffff))

    with open(r'.\gyro_y_data_for_iter.hex', "w") as f:
        for i in range(128):
            data = 17982+random.randint(-1500, 1500)
            # print(str(data)+" %04X"% (data & 0xffff))
            f.write("%08X\n" % (data & 0xffffffff))
            

gen_for_iter_uint()