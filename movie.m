close all
clear
clc

L=5;

x=linspace(0,L,101);
v1=deflection_curve(x,3);
v2=deflection_curve(x,3);

for i = 0:60
    figure('Position',[893.0000  304.2000  400,400])
    hold on
    axis off
    axis image
    axis([-1,L+1,-.1,L+1])
    
    beam([0,0],[0,L])
    beam([0,L],[L,L])
    beam([L,L],[L,0])
    
    plot(-v1*i/60,x,'r')
    plot(-v1*i/60+L,x,'r')
    plot([-v1(end)*i/60,-v1(end)*i/60+L],[L,L],'r')
    
    print(sprintf('movie/step%02i',i),'-dpng')
    close
end
% xx1 = -v1;
% yy1 = x-L;
% P1 = [xx1',yy1'];
% Prot1 = zeros(size(P1));
% RCB = [0,-L];
% RCT = [0,0];
% for i = 0 : 1 : 60
%     theta = i*pi/180*90/60;
%     A1 = [cos(-theta),sin(-theta);-sin(-theta),cos(-theta)];
%     for j = 1 : length(x)
%         Prot1(j,:) = P1(j,:)*A1;
%         RCBrot = RCB*A1;
%         RCTrot = RCT*A1;
%     end
%     xx1 = Prot1(:,1);
%     yy1 = Prot1(:,2)+L;
%     figure('Position',[893.0000  304.2000  700.0000  400.0000])
%     hold on
%     axis off
%     axis image
%     axis([-L,2*L,0,L+1])
%     
%     beam([xx1(1),yy1(1)],[0,L])
%     beam([0,L],[L,L])
%     beam([xx1(1),yy1(1)],[0,L])
%     beam([xx1(1)+L+i*L/60,yy1(1)],[RCT(1)+L+L*i/60,RCT(2)+L])
%     
%     plot(xx1,yy1,'r')
%     plot(xx1+L+i*L/60,yy1,'r')
%     plot([-v1(end)*i/60,-v1(end)*i/60+L],[L,L],'r')
%     
%     print(sprintf('movie/step%02i',61+i),'-dpng')
%     close
% end

v = VideoWriter('DOF3');

%v.CompressionRatio = 3;

%v.Quality = 80;

open(v)

for i = 0 : 60

    A = imread(sprintf('movie/step%02i.png',i));

    writeVideo(v,A)

end

close(v)