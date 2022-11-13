clc; clear all;

or=[ 0 0 ] ; % origin
r=5; %radius

figure ;

for angle = 1 : 360*5

px=[or(1) r*sind(angle)];
py=[or(2) r*cosd(angle)];

plot(px,py,"-","color",'k','LineWidth',3);

xlim([-10 10]);
ylim([-10 10]);
axis square;

drawnow;






end