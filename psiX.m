function y=psiX(a1,a2,phi);

% psiX.m
% return the value of a certain psi of x

%% define parameters
L = 1;
x = linspace(0,L,1000);

shortY = a1*sin(pi*x/L) + a2*exp(1i*phi)*sin(2*pi*x/L);

absSq = abs(shortY).^2;
A = sqrt(1/trapz(x,absSq));

y = A*shortY;