function [K, YR, E, M] = fuzzy_regression( X, Y)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
M = (X'*X)^-1*X';
K = M*Y;
YR = X*K;
E = abs(YR - Y);
end

