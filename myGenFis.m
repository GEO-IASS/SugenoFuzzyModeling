function [ fis ] = myGenFis(X,trimfs)
[var_cnt, clust_cnt, val_cnt] = size(trimfs);
fis = newfis('generated', 'sugeno');
for i = 1:var_cnt
   fis = addvar(fis,'input','var',[min(X{1,i}) max(X{1,i})]);
   for j = 1:clust_cnt
       fis = addmf(fis,'input',i,'poor','trimf',[trimfs(i,j,1) trimfs(i,j,2) trimfs(i,j,3)]);
   end
end


fis = addvar(fis,'output','tip',[-30 30]);
fis = addmf(fis,'output',1,'cheap','linear',[0 0 5]);
fis = addmf(fis,'output',1,'average','linear',[0 0 15]);
fis = addmf(fis,'output',1,'generous','linear',[0 0 25]);
ruleList = [1 1 1 1 2;
            2 0 2 1 1;
            3 2 3 1 2];
fis = addrule(fis,ruleList);
ruleview(fis);
%figure
gensurf(fis);
fuzzy(fis);
end

