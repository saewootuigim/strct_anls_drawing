function [X,Y] = arrowhead(x,y,theta)

P1 = [0,0]      *[cos(theta),sin(theta);-sin(theta),cos(theta)];
P2 = [-.05,-.15]*[cos(theta),sin(theta);-sin(theta),cos(theta)];
P3 = [0,-.1]    *[cos(theta),sin(theta);-sin(theta),cos(theta)];
P4 = [.05,-.15] *[cos(theta),sin(theta);-sin(theta),cos(theta)];

X = [P1(1),P2(1),P3(1),P4(1)]+x;
Y = [P1(2),P2(2),P3(2),P4(2)]+y;