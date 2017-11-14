function arrow_rot(center_x,center_y,position,center_degree,r,dir)

th = linspace(-center_degree/2,center_degree/2,20);
P = zeros(length(th),2);
for i = 1 : length(th)
    P(i,1) = r*cos(th(i));
    P(i,2) = r*sin(th(i));
end
A = [cos(position),sin(position);-sin(position),cos(position)];
for i = 1 : length(th)
    P(i,:) = P(i,:)*A;
end
plot(P(:,1)+center_x,P(:,2)+center_y,'k')

gamma = 2*asin(.1/2/r);
if strcmp(dir,'ccw')
    [X,Y] = arrowhead(center_x+P(end,1),center_y+P(end,2),position+center_degree/2-gamma);
    fill(X,Y,'k')
else
    [X,Y] = arrowhead(center_x+P(1,1),center_y+P(1,2),position-center_degree/2+pi-gamma);
    fill(X,Y,'k')
end
