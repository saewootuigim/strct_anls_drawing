function label(left_end,right_end,str)

theta = atan2(right_end(2)-left_end(2),right_end(1)-left_end(1));

plot([left_end(1),right_end(1)],[left_end(2),right_end(2)],'k')
text((right_end(1)+left_end(1))/2,(right_end(2)+left_end(2))/2,...
    str,'interpreter','LaTex',...
    'VerticalAlignment','middle',...
    'HorizontalAlignment','center',...
    'BackgroundColor','w')

[X,Y] = arrowhead(left_end(1),left_end(2),theta+pi/2);
fill(X,Y,'k')
[X,Y] = arrowhead(right_end(1),right_end(2),theta+3*pi/2);
fill(X,Y,'k')

P1_rot = [0,-.1]*[cos(theta),sin(theta);-sin(theta),cos(theta)];
P2_rot = [0,.1]*[cos(theta),sin(theta);-sin(theta),cos(theta)];
plot([P1_rot(1),P2_rot(1)]+left_end(1),...
     [P1_rot(2),P2_rot(2)]+left_end(2),'k')
 plot([P1_rot(1),P2_rot(1)]+right_end(1),...
     [P1_rot(2),P2_rot(2)]+right_end(2),'k')