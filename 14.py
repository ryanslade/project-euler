def get_next(n):
    if (n%2 == 0):
        return n/2
    else:
        return (n*3)+1

def get_chain(start):
    chain = []
    n = start
    while (n != 1):
        chain.append(n)
        n = get_next(n)
    return chain


longest = 0

for i in range(1,1000001):
    chain = get_chain(i)
    length = len(chain)
    if (length > longest):
        longest = length
        print("%i, length: %i" % (i, length))


