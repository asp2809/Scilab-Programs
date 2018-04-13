//program to find integration of the function f(x)=sqrt(x^2+1) using simpsons method
function []=simpsons(a,b,n)
    deff('y=f(x)','y=sqrt(x^2+1)')
    h1=(b-a)/n
    x0=a
    xn=b
    sum1=0
    while x0<xn
       sum1=sum1+(h1/3)*(f(x0)+4*f(x0+h1)+f(x0+2*h1))
       x0=x0+2*h1
    end
    disp(sum1)
endfunction
