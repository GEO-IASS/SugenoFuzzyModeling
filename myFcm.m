function [center,U,obj_fcn,ind] = myFcm(data,cluster_n)
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
    for i = 1:length(ind)
        plot(data(ind(i),1),data(ind(i),2),pointColors(k,:),'MarkerSize',20.*maxU(i).^2);
    end;    
    %plot(data(ind,1),data(ind,2),pointColors(k,:),'MarkerSize',mSize(k));    
    plot(c(k,1),c(k,2),centerColors(k,:), 'markersize', 30);
end;
%plot(data(index1,1),data(index1,2),'ko', 'markersize', 5);
%plot(data(index2,1),data(index2,2),'ro');
%plot(data(index3,1),data(index3,2),'bo');
end