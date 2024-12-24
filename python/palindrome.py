l=["cybrom","ana","hii","apple","nitin","madam"]
l1=[]
for i in l:
    for j in i:
        if i==i[::-1]:
            l1.append(i)
print(l1)