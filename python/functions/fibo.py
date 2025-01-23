def fibo(n):
    if n==1:

        return 0
    elif n==2:
        return 1
    else:
        return fibo(n-1)+fibo(n-2)
    
x=int(input("enter any number"))
for i in range(2,x):
    print(fibo(x),end="")
