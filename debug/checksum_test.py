
def checksum_verify(a, b, c, d):
    data = [0xAA, 0xFF, 0x03, 0x07, a, b, c, d, 0, 0, 0]
    checksum1 = 0
    checksum2 = 0
    print(len(data))
    for index in range(len(data)):
        checksum1 += data[index]
        checksum2 += checksum1
        
    # print(checksum1)
    print("checksum1: 0x%x\nchecksum2: 0x%x" % (checksum1, checksum2))


checksum_verify(0x5C, 0xFF, 0x27, 0xFF)
