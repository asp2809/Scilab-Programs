//program to generate an AM waveform
function []=ammod(Am,Ac,fm,fc,fs)
    t=0:1/fs:1
    vm=Am*cos(2*%pi*fm*t)
    vc=Ac*cos(2*%pi*fc*t)
    x=(Ac+vm).*(cos(2*%pi*fc*t))
    subplot(3,1,1)
    title("Modulating Signal")
    plot(vm)
    subplot(3,1,2)
    title("Carrier Signal")
    plot(vc)
    subplot(3,1,3)
    title("Modulated Signal")
    plot(x)
endfunction
