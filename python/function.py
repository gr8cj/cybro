# prime number

def prime(n):
    for i in range(2,n):
        if n %i==0:
            print("not a prime")
            break
        else:
            print("prime number")
def arm(n):
    a=len(str(n))
    old=n
    dig=0
    while n!=0:
        

