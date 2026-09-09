main:
    li x10, 0x100
    li x11, 0x200
    li x12, 0x300
    
#aarray a initialization
    li x5,1
    sb x5,0(x10)
    li x5,2
    sb x5,1(x10)
    li x5,3
    sb x5,2(x10)
    li x5,4
    sb x5,3(x10)

#aarray b initialization
    li x6,10
    sh x6,0(x11)
    li x6,20
    sh x6,2(x11)
    li x6,30
    sh x6,4(x11)
    li x6,40
    sh x6,6(x11)

# first iteration
    lb x1,0(x10)
    lh x2,0(x11)
    add x3, x1, x2
    sw x3,0(x12)

#second
    lb x1,1(x10)
    lh x2,2(x11)
    add x3, x1, x2
    sw x3,4(x12)

#third
    lb x1,2(x10)
    lh x2,4(x11)
    add x3, x1, x2
    sw x3,8(x12)

#forth
    lb x1,3(x10)
    lh x2,6(x11)
    add x3, x1, x2
    sw x3,12(x12)