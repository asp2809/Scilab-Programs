//program to find the value of a function at a point using the quadratic interpolation method
function []=quadraticinter(x, x0, x1, x2, y0, y1, y2)
    b1=(y1-y0)/(x1-x0)
    b2=(((y2-y1)/(x2-x1))+((y1-y0)/(x1-x0)))/(x2-x0)
    ans1=y0+b1*(x-x0)+b2*(x-x0)*(x-x1)
    disp(ans1)
endfunction
