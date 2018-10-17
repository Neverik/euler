__ID__ = 2

def fib():
    a, b = 1, 1
    while a <= 4000000:
        yield a
        a, b = b, a + b

s = 0
for i in fib():
    if i % 2 == 0:
        s += i

print(s)
