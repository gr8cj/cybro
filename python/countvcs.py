s=input("enter your string:-")
vcount=0
scount=0
ccount=0
for i in s:
    if i=="a" or i=="e" or i=="i" or i=="o" or i=="u" :
        vcount=vcount+1
    elif  i==" ":
        scount=scount+1
    else:
        ccount=count+1
print("your vowel count is :-",vcount)
print("your consonent count is:-",ccount)
print("your space count is :-",scount)