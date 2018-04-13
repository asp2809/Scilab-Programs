//program to implement bisection method
function []=bisection(r)
    xl=0
    xu=r
    xm=xl+xu/2
    p=poly([3.993*10^-4,0, -0.165,1],'x','coeff')
    p1=horner(p,xl)
    p2=horner(p,xu)
    if p1*p2<0 then
       xu=xm
    else
       xl=xm
    end
    xmn=(xl+xu)/2
    e=abs((xmn-xm)/xmn)*100
    while e>5
        xm=xmn
        p1=horner(p,xl)
        p2=horner(p,xu)
        if p1*p2<0 then
           xu=xm
        else
           xl=xm
        end
        xmn=(xl+xu)/2
        e=abs((xmn-xm)/xmn)*100
        disp(e,xmn)
    end
endfunction
