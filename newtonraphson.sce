//Newton-Raphson Method
//x=x0-f(x0)/f'(x)
function [p]=newton(x0,start,end1)
    i=0
    while i<5
        f1=x0^5-7
        f2=5*x0^4
        p=x0-f1/f2
        disp(x0)
        disp(p)
        x0=p
        i=i+1
    end
endfunction
