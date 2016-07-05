function fis = genfisFR3()
a = newfis('tipper', 'sugeno');
a = addvar(a,'input','service',[0 10]); 
a = addmf(a,'input',1,'poor','gaussmf',[1.5 0]);
a = addmf(a,'input',1,'good','gaussmf',[1.5 5]);
a = addmf(a,'input',1,'excellent','gaussmf',[1.5 10]);
a = addvar(a,'input','food',[0 10]);
a = addmf(a,'input',2,'rancid','trapmf',[-2 0 1 3]);
a = addmf(a,'input',2,'delicious','trapmf',[7 9 10 12]);
a = addvar(a,'output','tip',[-30 30]);
a = addmf(a,'output',1,'cheap','linear',[0 0 5]);
a = addmf(a,'output',1,'average','linear',[0 0 15]);
a = addmf(a,'output',1,'generous','linear',[0 0 25]);
ruleList = [1 1 1 1 2;
            2 0 2 1 1;
            3 2 3 1 2];
a = addrule(a,ruleList);
fis = a;
end