function plotFuzzyRegression(x, Y, YR)
plotFuzzyLine(x,Y,'b>-.','r^-.','gv-.');
hold on
plotFuzzyLine(x,YR,'b','r','g');
end