//program to generate (7,4) hamming code from a 4-bit input
function [l]= hammingcode()
    i1=input("Enter i1:")
    i2=input("Enter i2:")
    i3=input("Enter i3:")
    i4=input("Enter i4:")
    temp1=bitxor(i1,i2)
    p1=bitxor(temp1,i3)
    temp1=bitxor(i2,i3)
    p2=bitxor(temp1,i4)
    temp1=bitxor(i1,i2)
    p3=bitxor(temp1,i4)
    mprintf("%d %d %d %d %d %d %d\n", i1,i2,i3,i4,p1,p2,p3)
endfunction
