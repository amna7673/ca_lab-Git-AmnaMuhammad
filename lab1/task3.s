main:

    li x1,5 #a=5
    
    add x2, x0, x0 #b = 0 + 0;
    addi x1, x2,32  #a = b + 32;
    add x4 , x1,x2  #x4: temp register(a + b)
    addi x3, x4, -5   #x3= d 
    sub x5, x1, x3  #x5: temp register (a-d)
    sub x6, x2, x1  #x6: temp register (b-a)
    add x7, x5, x6   #x7: temp register (((a - d) + (b - a))
    add x8, x7, x3  #x8=e int e = (((a - d) + (b - a)) + d);
    add x9, x1, x2   #a+b
    add x9, x9, x3  # a+b+d
    add x8, x9, x8  #e=a+b+d+e

end:
    j end