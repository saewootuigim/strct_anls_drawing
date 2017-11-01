% one end arrow
function arrow1(left_end,right_end,arrow_head_loc)

theta = atan2(right_end(2)-left_end(2),right_end(1)-left_end(1));

plot([left_end(1),right_end(1)],[left_end(2),right_end(2)],'k')

if arrow_head_loc==1
    [X,Y] = arrowhead(left_end(1),left_end(2),theta+pi/2);
    fill(X,Y,'k')
else
    [X,Y] = arrowhead(right_end(1),right_end(2),theta+3*pi/2);
    fill(X,Y,'k')
end