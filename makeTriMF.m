function [trimfs, fis]=makeTriMF(X,data,U,center)
[cluster_n, point_n] = size(U);
[data_point_n, data_dimentions] = size(data);
assert(point_n == data_point_n, 'U points number must be equal to data points number');
maxU = max(U);
for k = 1:cluster_n
    ind = U(k,:)== maxU;
    data(ind,data_dimentions+1) = k;
end
trimfs = zeros(data_dimentions,k,3);
for k = 1:cluster_n
   max_k = max(data((data(:,3) == k),:),[],1);
   min_k = min(data((data(:,3) == k),:),[],1);
   center_k = center(k,:);   
   for i = 1:data_dimentions
       hold on
       plot(X{i},trimf(X{i}, [min_k(i) center_k(i) max_k(i)]));       
       trimfs(i,k,:) = [min_k(i) center_k(i) max_k(i)];
   end
end
end