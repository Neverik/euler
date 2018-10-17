__ID__ = 1

i = 0
for e in range(1, 1000):
    if e % 5 == 0 or e % 3 == 0:
        i += e
print(i)