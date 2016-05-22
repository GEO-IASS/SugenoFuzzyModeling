function [center,U,obj_fcn] = myFcm(data,cluster_n)
ms = [12 12 12];
[c,U,obj_fcn] = fcm(data,cluster_n);
center = c;
maxU = max(U);
%index1 = find(U(1,:)== maxU);
%index2 = find(U(2,:)== maxU);
%index3 = find(U(3,:)== maxU);
for k = 1:3
    ind = find(U(k,:)== maxU);
    plot(data(ind,1),data(ind,2),'ko','MarkerSize',5);
    hold on
    plot(c(k,1),c(k,2),'kx', 'markersize', 15);
end;
%plot(data(index1,1),data(index1,2),'ko', 'markersize', 5);
%hold on
%plot(data(index2,1),data(index2,2),'ro');
%plot(data(index3,1),data(index3,2),'bo');
%plot(c(1,1),c(1,2),'kx', 'markersize', 15);
%plot(c(2,1),c(2,2),'rx', 'markersize', 15);
%plot(c(3,1),c(3,2),'bx', 'markersize', 15);
end