function beam(left_end,right_end)

plot([left_end(1),right_end(1)],[left_end(2),right_end(2)],'k',...
    'LineWidth',1.3)

L = .08;
fill([-L/2,L/2,L/2,-L/2]+left_end(1),[-L/2,-L/2,L/2,L/2]+left_end(2),'k')
fill([-L/2,L/2,L/2,-L/2]+right_end(1),[-L/2,-L/2,L/2,L/2]+right_end(2),'k')