clc

step=0.01;
Re_plot=-2:step:1;
Im_plot=-1:step:1;

hold on

for Re = Re_plot
    for Im = Im_plot
        c_in = Re + Im*li;
        if(mandelbrot_check(c_in,512))
            plot(Re, Im,'r.');
        end
    end
end


function[inSet]=mandelbrot_check(c, maxIter)
z=0;
counter=0;

while abs(z)<2 && counter<maxIter
    z=z^2+c;
    counter=counter+1;

end
if counter == maxIter
    inSet=true;
else
    inSet=false;
end
end