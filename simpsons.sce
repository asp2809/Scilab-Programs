//program to find the integration of a function f(x)=1/(1+x) using simpsons method and then finding the error by comparing it with the original value
function [e]=simpsons(a,b,n)
    deff('y = f(x)','y = 1/(1+x)')
    h=((b-a)/n)
    sum1=0
    while(a<b)
        sum1=sum1+((h/3)*(f(a) + (4*f(a+h)) + f(a+2*h)))
        a=a+2*h
    end
    disp(sum1)
    ans=1.94591
    e=(abs(ans-sum1)/ans)*100
endfunction
