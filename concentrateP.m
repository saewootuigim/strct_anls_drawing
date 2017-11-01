function concentrateP(headP,tailP)

plot([headP(1),tailP(1)],[headP(2),tailP(2)],'k')
theta = atan2(tailP(2)-headP(2),tailP(1)-headP(1));
[X,Y] = arrowhead(headP(1),headP(2),theta+pi/2);
fill(X,Y,'k')