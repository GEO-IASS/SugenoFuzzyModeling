function [center,U,obj_fcn,ind] = myFcm(data,cluster_n)
markCoef = [20 2];
pointColors = ['ko';'ro';'bo'];
centerColors = ['kx';'rx';'bx'];
%mSize = [8 8 8];
[c,U,obj_fcn] = fcm(data,cluster_n);
center = c;
maxU = max(U);
figure;
hold on
for k = 1:cluster_n
    ind = find(U(k,:)== maxU);
    %[K, YR, E, M] = fuzzy_regression(data(ind,1),data(ind,2));
    %plotFuzzyRegression(data(ind,1),data(ind,2),YR);
    for i = 1:length(ind)
        plot(data(ind(i),1),data(ind(i),2),pointColors(k,:),'MarkerSize',markCoef(1).*maxU(i).^markCoef(2));
    end;    
    %plot(data(ind,1),data(ind,2),pointColors(k,:),'MarkerSize',mSize(k));    
    plot(c(k,1),c(k,2),centerColors(k,:), 'markersize', 30);
end;
end