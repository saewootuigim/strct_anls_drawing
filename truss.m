function truss(left_end,right_end)

% draw member
plot([left_end(1),right_end(1)],[left_end(2),right_end(2)],'k',...
    'LineWidth',.25)

% draw hinges
L = .04;
theta = linspace(0,2*pi,100);
x = L*cos(theta);
y = L*sin(theta);

plot(x+left_end(1),y+left_end(2),'k')
fill(x+left_end(1),y+left_end(2),'w')
plot(x+right_end(1),y+right_end(2),'k')
fill(x+right_end(1),y+right_end(2),'w')