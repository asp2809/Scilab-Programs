//program to find the value of a function at a point using lagrange's method
function []=lagrange(x)
    t=list(1,1.2,1.3,1.5)
    y=list(1,1.0954,1.1402,1.2247)
    l=list(1,1,1,1)
    pol=0
    for i=1:4
        for j=1:4
            if i~=j then
                l(i)=l(i)*(x-t(j))/(t(i)-t(j))
            end
        end 
        pol=pol + l(i)*y(i)
    end
    disp(pol)
endfunction
