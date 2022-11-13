clc
clear all
close all

fig1=figure;
%lengths
l1 = 2 ; l2 = 1 ;
%speeds
w1 = 1 ; w2 = 2.25 ;
%origin
p1 = 0 + 0*i % complex plane

for angle = 0 : 360*4
    counter = angle+1;
    angle = deg2rad(angle) ; % degree to rad

    p2 = rotline(p1,l1,w1,angle) ;
    hold on ;
    p3 = rotline(p2,l2,w2,angle) ; 
    
    tr(counter) = p3 ;
    plot(real(tr),imag(tr),"w-")
    xlim([-5 5]);
    ylim([-5 5]);
    daspect([1 1 1]);
    hold off;

    set(gca,'color','k');
    drawnow ; 

end

function p2 = rotline(p1,r,w,t)

p2 = p1+r*exp(i*w*t);

x=real([p1 p2]);
y=imag([p1 p2]);

plot(x,y,'-','color','w','LineWidth',2);
hold on;
plot(x,y,'.','color','w','MarkerSize',20);
plot(x,y,'.','color','k','MarkerSize',15);

end