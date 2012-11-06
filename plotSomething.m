function y=plotSomething(handles);


%% Get Values
a1 = get(handles.a1Slide,'Value');
a2 = get(handles.a2Slide,'Value');
phi = get(handles.phiSlide,'Value');

L = 1;
x = linspace(0,L,1000);

%Calculate functions
psi = psiX(a1,a2,phi);

re = real(psi);
im = imag(psi);
ang = angle(psi);
p = abs(psi).^2;

%Pleft calc
Pleft = pleft(psi);
str = num2str(Pleft);
set(handles.pleftTxt,'String',str);

%% plot graphs
plotType = get(handles.plotMenu,'Value');

switch plotType
    case 1 % real
        plot(handles.graph,x,re);
        xlabel('x');
        ylabel('Re[Psi(x)]');
        title('Real Part of Wavefunction');
        axis([0 1.0 -0.6 2.0]);
    case 2 % imaginary
        plot(handles.graph,x,im);
        xlabel('x');
        ylabel('Imag[Psi(x)]');
        title('Imaginary Part of Wavefunction');
        axis([0 1.0 -1.5 1.5]);
    case 3 % angle
        plot(handles.graph,x,ang);
        xlabel('x');
        ylabel('Angle[Psi(x)]');
        title('Angle of Wavefunction');
        axis([0 1.0 -4.0 4.0]);
    case 4 % abs square
        plot(handles.graph,x,p);
        xlabel('x');
        ylabel('P(x)');
        title('Absolute Square of Wavefunction');
        axis([0 1.0 0 3.5]);
end
