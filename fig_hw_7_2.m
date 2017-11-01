close all
clear
clc

figure('Position',[800 200  560  120]);hold on
axis off
axis image

L=7;

beam([0,0],[L/2,0])
beam([L/2,0],[L,0])

pinned(0,-.05,0)
pinned(L,-.05,0)

print('hw7_2_2','-depsc')

arrow_rot(0,0,3/4*pi,5/14*pi,.3,'ccw');  marker(0.1,.3,'1')
arrow_rot(L/2,0,1/2*pi,5/14*pi,.3,'ccw');marker(L-.1,.3,'2')
arrow_rot(L,0,1/4*pi,5/14*pi,.3,'ccw');  marker(L/2,.5,'3')
arrow1([L/2,-.5],[L/2,-.1],2);           marker(L/2,-.65,'4')

print('hw7_2_1','-depsc')