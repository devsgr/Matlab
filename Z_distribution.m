close all
t = -3:.01:3;
p1 = normpdf(t);
plot(t,p1,'linewidth',1);
hold on
h=area(t(1:200),p1(1:200));
h.FaceAlpha = 0.2;
text(-1.5,.05,'\alpha')
%text(-2,.02,'(Cumulative probability)')
xlabel('Z Value')
ylabel('Probability density (p)')
