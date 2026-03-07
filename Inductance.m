function L = Inductance()
Vin = 10;
T = 1/20000;
D = 1/3:1/9:2/3;
L = [];
for R = 10:10:200
    iL = (D./(1-D).^2).*(Vin/R);
    dL = 2.*iL;
    L = [L,(Vin.*D.*T)./dL];
end
L = max(L);
end