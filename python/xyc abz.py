
s1 = "xyz"
s2 = "abc"

for i in range(len(s1)):
    if i < 2:
        print(s1[i], end="")
    else:
        print(s2[i], end="")
print(" ", end="")  

for i in range(len(s2)):
    if i < 2:
        print(s2[i], end="")
    else:
        print(s1[i], end="")
