//program to solve differential equation using euler's method 
function []=euler(x0,y0,xn,h)
    deff('y1=f(x,y)','y1=(y-x)/(y+x)')
    y1=y0+(h)*f(x0,y0)
    x0=x0+h
    y0=y1
    while x0<xn
       y1=y0+(h)*f(x0,y0)
        x0=x0+h
        y0=y1 
    end
    disp(y1)
endfunction
