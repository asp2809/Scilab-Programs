//program to generate a PAM waveform
function []=pammod(Am,fm)
    t=0:0.1:12*%pi
    vc=1+squarewave(4*t)
    vm=Am*sin(2*%pi*fm*t)
    mt=vc.*vm
    subplot(3,1,1)
    plot(vm)
    title('Modulating Signal')
    subplot(3,1,2)
    plot(vc)
    title('Carrier Signal')
    subplot(3,1,3)
    plot(mt);
    title('PAM Signal')
endfunction
