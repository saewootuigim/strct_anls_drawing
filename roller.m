function roller(x,y,theta)

% draw triangle
L = .2;
P1 = [-L/2,-L*sqrt(3)/2];
P2 = [L/2,-L*sqrt(3)/2];
P3 = [0,0];

P1_rot = P1*[cos(theta),sin(theta);-sin(theta),cos(theta)];
P2_rot = P2*[cos(theta),sin(theta);-sin(theta),cos(theta)];
P3_rot = P3*[cos(theta),sin(theta);-sin(theta),cos(theta)];

fill([P1_rot(1),P2_rot(1),P3_rot(1)]+x,[P1_rot(2),P2_rot(2),P3_rot(2)]+y,'k')

% draw circles
th = linspace(0,2*pi,30);
r = L/6;

Pcircle = [r*cos(th)'-6/4*r,r*sin(th)'-L*sqrt(3)/2-r];
Pcircle_rot = rotate(Pcircle,theta);
xr = Pcircle_rot(:,1);
yr = Pcircle_rot(:,2);
plot(xr+x,yr+y,'k')

Pcircle = [r*cos(th)'+6/4*r,r*sin(th)'-L*sqrt(3)/2-r];
Pcircle_rot = rotate(Pcircle,theta);
xr = Pcircle_rot(:,1);
yr = Pcircle_rot(:,2);
plot(xr+x,yr+y,'k')

% draw a straight line
P4 = [-L,P1(2)-2*r];
P5 = [L,P2(2)-2*r];

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
    P6_rot = [xxx(1),yyy(1)+P2(2)-2*r]*[cos(theta),sin(theta);-sin(theta),cos(theta)];
    P7_rot = [xxx(2),yyy(2)+P2(2)-2*r]*[cos(theta),sin(theta);-sin(theta),cos(theta)];
    xxx = [P6_rot(1),P7_rot(1)]+x;
    yyy = [P6_rot(2),P7_rot(2)]+y;
    plot(xxx,yyy,'k')
end
end