function plotFuzzyLine(x, Y, c1, c2, c3)
m = Y(:,1);
a = Y(:,1) + Y(:,2);
b = Y(:,1) - Y(:,3);
plot(x, m, c1);
hold on
plot(x, a, c2);
plot(x, b, c3);
end