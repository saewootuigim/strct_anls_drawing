close all
clc

figure('Position',[404.0000  400  686  310.5000])
hold on; axis image; axis off

% It is good to maintain the width of the structure by 7
% for structure-to-support configuration.
L4 = 4;

fixed(0,0,3*pi/2)
pinned(-.05,L4,3*pi/2)

beam([0,0],[L4,0])
beam([L4,0],[2*L4,0])

truss([0,L4],[L4,.1])
truss([0,L4],[2*L4,.1])

label([0,-.45],[L4,-.45],'$L$')
label([L4,-.45],[2*L4,-.45],'$L$')
label([-.46,0],[-.46,L4],'$L$')

marker(-.3,-.3,'A')
marker(L4,-.25,'B')
marker(2*L4+.2,0,'C')
marker(0,L4+.2,'D')

marker(L4/2,.2,'$EI$')
marker(L4*3/2,.2,'$EI$')
marker(L4/2-.5,L4/2,'$EA$')
marker(L4*3/2-1.2,L4/2,'$EA$')

print('midterm2_1','-deps')