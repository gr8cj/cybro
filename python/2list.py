l1=[1,2,3,4,5]
l2=[2,3,4,5,6]
l3=[]
for i,j in zip(l1,l2):
    l3.append(i**j)
print(l3)