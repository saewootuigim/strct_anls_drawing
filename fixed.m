function fixed(x,y,theta)

% draw a straight line
L = 0.2;
P4 = [-L,0];
P5 = [L,0];

P4_rot = P4*[cos(theta),sin(theta);-sin(theta),cos(theta)];
P5_rot = P5*[cos(theta),sin(theta);-sin(theta),cos(theta)];

plot([P4_rot(1),P5_rot(1)]+x,[P4_rot(2),P5_rot(2)]+y,'k','LineWidth',1)

% hatch
xx = [-.08,.08];
yy = [-.14,0];
m = (yy(2)-yy(1))/(xx(2)-xx(1));

for i = -4 : 4
    xxx = xx+i/12;
    yyy = yy;
    if xxx(2)<-L
        continue
    elseif xxx(1)>L
        continue
    elseif xxx(1)<-L
        xxx(1) = -L;
        yyy(1) = m*(-L-xxx(2))+yyy(2);
    elseif xxx(2)>L
        xxx(2) = L;
        yyy(2) = m*(L-xxx(1))+yyy(1);
    end
    P6_rot = [xxx(1),yyy(1)]*[cos(theta),sin(theta);-sin(theta),cos(theta)];
    P7_rot = [xxx(2),yyy(2)]*[cos(theta),sin(theta);-sin(theta),cos(theta)];
    xxx = [P6_rot(1),P7_rot(1)]+x;
    yyy = [P6_rot(2),P7_rot(2)]+y;
    plot(xxx,yyy,'k')
end