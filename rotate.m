function P_rot = rotate(P,angle)
A = [cos(angle),sin(angle);-sin(angle),cos(angle)];
P_rot = zeros(size(P));
for i = 1 : size(P,1)
    P_rot(i,:) = P(i,:)*A;
end