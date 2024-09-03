def hash(key, capacity):
    length = len(key)
    sum = 0
    for idx in range(length):
        sum += ord(key[idx])
    value = (sum**length)%length**length
    final = value % capacity
    return final

ht = [None for i in range(7)]

hashed = hash("Password123!", 7)
print(hashed)
ht[hashed] = "Password123!"
print(ht)
