//program to generate an ASK modulated waveform
function []=ASKmod(data,fc,Ac)
    t=0:0.001:1
    x=Ac*sin(2*%pi*fc*t)
    y=0*t
    z=data
    mods=[]
    for i=1:length(data)
        if(z(i)==1) then
            mods=[mods,x]
        else
            mods=[mods,y]
        end
    end
    plot(mods)
    title("ASK Signal")
endfunction
