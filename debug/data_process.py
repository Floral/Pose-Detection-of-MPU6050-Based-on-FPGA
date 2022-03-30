
with open(r".\test_uart_data13_115200_processed.txt", "w") as f_after:
    with open(r".\test_uart_data13_115200.txt", "r+") as f_before:
        line = f_before.readline()
        line_new = ""
        for index in range(len(line)):
            if (index > 0 and index % 39 == 0):
                line_new += '\n'
            line_new += line[index]
    f_after.write(line_new)
            
            
    
    
