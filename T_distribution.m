close all
t = -3:.01:3;
p1 = tpdf(t,1);
p5 = tpdf(t,5);
p30 = tpdf(t,30);
plot(t,[p30; p5; p1],'linewidth',1);
hold on
h=area(t(1:200),p30(1:200));
h.FaceAlpha = 0.2;
text(-1.5,.05,'\alpha')
%text(-2,.02,'(Cumulative probability)')
xlabel('T Value')
ylabel('Probability density (p)')
txt = ' \leftarrow 1 degree of freedom';
t1 = 0.5;
offset = 0.04;
df = 1;
text(t1-offset,tpdf(t1,df),txt)
txt = ' \leftarrow 5 degrees of freedom';
t1 = 0.5;
df = 5;
text(t1-offset,tpdf(t1,df),txt)
txt = ' \leftarrow 30 degrees of freedom';
t1 = 0.5;
df = 30;
text(t1-offset,tpdf(t1,df),txt)