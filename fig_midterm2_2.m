close all
clear
clc

figure('Position',[880.2000  301.8000  560.0000  228.0000])
hold on; axis image; axis off

beam([-4,.04],[0,.04])
beam([0,.04],[4,.04])
pinned(-4,0,0)
pinned(4,0,0)

r = .04*sqrt(2);
truss([-4,-3],[0,-r])
truss([0,-r],[4,-3])
pinned(-4,-3-r,0)
pinned(4,-3-r,0)

concentrateP([0,.2],[0,1])
marker(0,1.2,'10 kip')

arrow2([-4,-3.6],[0,-3.6],1);marker(-2,-3.4,'48 in.')
arrow2([0,-3.6],[4,-3.6],1);marker(2,-3.4,'48 in.')
arrow2([-4.3,-3],[-4.3,.04],1);marker(-4.3,-1.3,'36 in.')
arrow2([4.3,-3],[4.3,.04],1);marker(4.3,-1.3,'36 in.')

marker(-2,.2,'$EI$')
marker(2,.2,'$EI$')
marker(-2,-2,'$EA$')
marker(2,-2,'$EA$')

marker(-4,.23,'A')
marker(4,.23,'B')
marker(-4.44,-3.3,'C')
marker(4.44,-3.3,'D')
marker(0,-.4,'E')

print('midterm_2','-depsc')
