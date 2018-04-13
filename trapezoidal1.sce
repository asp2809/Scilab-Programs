//program to find the integration of the function f(x)=1/(1+x) using the trapezoidal rule and then finding the error
function [e]= trapezoidalint(a,b,n)
    deff('y = f(x)','y = 1/(1+x)')
    intrvl=(b-a)/n
    sum1=(f(a) + f(b))
    c=a
    while(n>1)
        c=c+intrvl
        sum1=sum1+(2*f(c))
        n=n-1
    end
    sum1=(intrvl*sum1)/2
    ans=1.94591
    disp(sum1)
    disp(ans)
    e=(abs(ans-sum1)/ans)*100
endfunction
