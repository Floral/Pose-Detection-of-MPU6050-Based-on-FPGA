import math

n = 41

t = 1-math.pow(2, -40)

# for k in range(100) :
#     if ((t-1) % n == 0):
#         print("k: %d | 2^k-1: %d | m: %d\n" % (k, t-1, t/n))
#     t = t*2

print(1/t)
