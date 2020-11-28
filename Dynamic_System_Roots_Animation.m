% Second order differential equation solution
% Generated plot used in ppt
a2 = 1;
a1 = 2;


s = -3:.01:1; 
frames = 720;
a0 = linspace(-1,5,frames);
for n = 1:frames
    
y = a2*s.^2+a1*s+a0(n);
r = roots([a2 a1 a0(n)]);
subplot (1,2,1)
plot(s,y)
hold on
if isreal(r)
    scatter(r,[0 0],'filled')
    txt=text(r(1),0,strcat('\leftarrow',num2str(r(1),'%1.1f')),'fontsize',12);
    set(txt,'Rotation',45)
    txt=text(r(2),0,strcat('\leftarrow',num2str(r(2),'%1.1f')),'fontsize',12);
    set(txt,'Rotation',45)
else
    scatter(real(r),imag(r),'filled')
    txt=text(real(r(1)),imag(r(1)),strcat('\leftarrow',num2str(r(1),'%1.1f')),'fontsize',12);
    set(txt,'Rotation',45)
    txt=text(real(r(2)),imag(r(2)),strcat('\leftarrow',num2str(r(2),'%1.1f')),'fontsize',12);
    set(txt,'Rotation',45)
end 

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
axis([-3 1 -10 10])
grid on
xlabel ('s')
ylabel (strcat('1 s^2 + 2 s + ',num2str(a0(n),'%1.2f'),'=0'));
c1 = 1;
c2 = 1;
t = (0:.001:10)';
y1 = c1*exp(real(r(1))*t).*(cos(imag(r(1))*t)+sin(imag(r(1))*t));
y2 = c2*exp(real(r(2))*t).*(cos(imag(r(2))*t)+sin(imag(r(2))*t));
hold off
subplot (1,2,2)

plot(t,y1+y2)
xlabel ('Time')
ylabel ('y')
grid on
if y1+y2 <=2
axis([0 10 -.50 2])
end
set(gcf,'units','pixels','Position',[500 100 1920/2 1080]); 
M(n)=getframe(gcf);
end

% 
% HVid = VideoWriter('D:\Temp\Damping');
% HVid.Quality = 85;
% open(HVid);
% writeVideo(HVid,M);
% close(HVid)
