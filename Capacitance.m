function C = Capacitance()
D = 1/3:1/9:2/3;
T = 1/20000;
Vin = 10;
Vout = (D./(1-D)).*Vin;
dV = 0.05.*Vout;
C = [];
for R = 10:10:200
    Iout = Vout ./R;
    C = [C, (Iout .* D .* T) ./(dV)];
end
C = max(C);
end