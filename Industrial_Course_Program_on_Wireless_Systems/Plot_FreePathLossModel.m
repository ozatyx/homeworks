%plot_PL_general.m
clear, clf
fc=1.5e10; d0=100; sigma=3; distance=[1:2:31].^2;
Gt=[1 1 0.5]; Gr=[1 0.5 0.5]; Exp=[2 3 6];
for k=1:3
y_Free(k,:)=PL_free(fc,distance,Gt(k),Gr(k));
y_logdist(k,:)=PL_logdist_or_norm(fc,distance,d0,Exp(k));
y_lognorm(k,:)=PL_logdist_or_norm(fc,distance,d0,Exp(1),sigma);
end
subplot(131), semilogx(distance,y_Free(1,:),'k-o', distance,y_Free(2,:),'k-^', distance,y_Free(3,:),'k-s'), grid on, axis([1 1000 40 110]),
title(['Free Path-loss Model, f_c=',num2str(fc/1e6),'MHz'])
xlabel('Distance[m]'), ylabel('Path loss[dB]')
legend('G_t=1, G_r=1','G_t=1, G_r=0.5','G_t=0.5, G_r=0.5',2)
subplot(132)
semilogx(distance,y_logdist(1,:),'k-o', distance,y_logdist(2,:),'k-^', distance,y_logdist(3,:),'k-s'), grid on, axis([1 1000 40 110]),
title(['Log-distance Path-loss Model, f_c=',num2str(fc/1e6),'MHz'])
xlabel('Distance[m]'), ylabel('Path loss[dB]'),
legend('n=2','n=3','n=6',2)
subplot(133), semilogx(distance,y_lognorm(1,:),'k-o', distance,y_lognorm(2,:),'k-^', distance,y_lognorm(3,:),'k-s')
grid on, axis([1 1000 40 110]), legend('path 1','path 2','path 3',2)
title(['Log-normal Path-loss Model, f_c=',num2str(fc/1e6),'MHz,' , '\sigma=', num2str(sigma), 'dB, n=2'])
xlabel('Distance[m]'), ylabel('Path loss[dB]')