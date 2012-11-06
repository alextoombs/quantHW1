function y=pleft(psi);

x = linspace(0,1,1000);

for i=1:length(x)/2
    space(i)=x(i);
    spacePsi(i)=psi(i);
end

val = abs(spacePsi).^2;
y = trapz(space,val);