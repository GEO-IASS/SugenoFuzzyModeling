function [ ret ] = MySombrero()
%MySombrero Summary of this function goes here
%   Detailed explanation goes here
[x, y] = meshgrid(-8:0.5:8);
R = sqrt(x.^2 + y.^2);
ret = sin(R)./R;
ret(R == 0) = 1;
surf(x,y,ret);
end

