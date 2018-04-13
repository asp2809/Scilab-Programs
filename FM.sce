//program to find the frequency modulated waveform
function[x,Vm,Vc]=fmmod1(Ec,Em,fm,fc,fs)
    t = 0:1/fs:1;
    Vm = Em*sin(2*%pi*fm*t);
    Vc = Ec*sin(2*%pi*fc*t);
    k = 1.5; 
    x =  Ec*sin((2*%pi*fc*t)+(k*Em/fm)*cos(2*%pi*fm*t));
    subplot(3,1,1)
    plot(Vm)
    title('Modulating Signal')
    subplot(3,1,2)
    plot(Vc)
    title('Carrier Signal')
    subplot(3,1,3)
    plot(x);
    title('Frequency Modulated Signal')
endfunction
