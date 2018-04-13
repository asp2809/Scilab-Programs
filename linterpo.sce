//program to find the value of the function at a point using linear interpolation method
function [ans]=linearinter(x,x0,x1,y0,y1)
    b0=y0
    b1=(y1-y0)/(x1-x0)
    ans=b0+b1*(x-x0)
    printf("%d m/s",ans)
endfunction
