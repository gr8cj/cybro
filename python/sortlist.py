l=[10,12,2,3,4,12,421,4,2412,]
for i in range(len(l)):
    for j in range(i+1,len(l)):
        if l[i]>l[j]:
            l[i],l[j]=l[j], l[i]
print(l)