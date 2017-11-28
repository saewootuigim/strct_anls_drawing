function springP(x,y,angle)

m = .2;

xx=[0,1]*.15;
yy=m*xx;
d = sum(abs(yy));
P = rotate([0,0;0,-d],angle);
plot(P(:,1)+x,P(:,2)+y,'k')
P = rotate([xx',-d-yy'],angle);
plot(P(:,1)+x,P(:,2)+y,'k')

xx = [-1,1]*.15;
yy = m*xx;
d = sum(abs(yy));

for i = 1 : 2
    P = rotate([xx', yy'+d/2-2*d*i],angle);
    plot(P(:,1)+x,P(:,2)+y,'k')
    P = rotate([xx',-yy'-d/2-2*d*i],angle);
    plot(P(:,1)+x,P(:,2)+y,'k')
end

xx=[0,1]*.15;
yy=m*xx;
d = sum(abs(yy));
P = rotate([xx',-11*d+yy'],angle);
plot(P(:,1)+x,P(:,2)+y,'k')
P = rotate([0,-11*d;0,-12*d],angle);
plot(P(:,1)+x,P(:,2)+y,'k')
P = rotate([0,-12*d],angle);
fixed(P(1)+x,P(2)+y,angle)