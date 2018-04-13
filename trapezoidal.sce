//program to find the integration of the function f(x)=sqrt(x^2+1) using the trapezoidal rule
function []=trapezoidal(a,b,n)
    deff('y=f1(x)','y=sqrt(x^2+1)')
    h1=(b-a)/n
    x0=a
    xn=b
    sum1=0
    while x0<xn
       sum1=sum1+(h1/2)*(f1(x0)+f1(x0+h1))
       x0=x0+h1
    end
    disp(sum1)
endfunction
