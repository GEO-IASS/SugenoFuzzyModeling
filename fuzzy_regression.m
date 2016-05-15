function [ m, a, b, em, ea, eb] = fuzzy_regression( X, my, ay, by )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    K = (X'*X)^-1*X';
    km = K*my;
    ka = K*ay;
    kb = K*by;
    m = X*km;
    a = X*ka;
    b = X*kb;
    em = abs(m-my);
    ea = abs(a-ay);
    eb = abs(b-by);
end

