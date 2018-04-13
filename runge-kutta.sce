//program to solve differential equation using runge-kutta method
function []=rungekutta(x0,y0,xn,h)
    deff('y1=f(x,y)','y1=x+y')
    while x0<xn
        k1=h*f(x0,y0)
        k2=h*f(x0+h/2, y0+k1/2)
        k3=h*f(x0+h/2, y0+k2/2)
        k4=h*f(x0+h,y0+k3)
        k=(k1+2*k2+2*k3+k4)/6
        x0=x0+h
        y1=y0+k
        y0=y1
    end
    disp(y1,xn)
endfunction
