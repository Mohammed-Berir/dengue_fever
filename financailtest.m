clc; clear; close all;
%a = 1; b = 0.1; c = 1.0; x0 = 1; m0 = -1; z0 = 1; 
 x01=1;x02=1;x03=1;x04=1;x05=1;x06=1;x07=1 ;v=0.00011; pi_b=0.05; p=0.4; beta_b=0.5; mu_b=0.0000548; gamma=0.5; delta_b=0.03; theta=0.02; pi_a=0.071; m=0.06 ;beta_a=0.4; mu_a=0.4;

fdefun = @(t,x) [ (1-v)*pi_b-p*beta_b*x(1)*x(7)-mu_b*x(1)+gamma*x(4);...
                   p*beta_b*x(1)*x(7)-(delta_b+mu_b)*x(2);...
                   delta_b*x(2)-(theta+mu_b)*x(3);...
                   theta*x(2)-(gamma+m*theta+mu_b)*x(4);...
                   v*pi_b+m*theta*x(4)-mu_b*x(5);...
                   pi_a - p*beta_a*x(6)*x(3)-mu_a*x(6);...
                   p*beta_a*x(6)*x(3)-mu_a*x(7) ] ;
t0=0.5;tfinal=120 ; h=0.001;y0=[x01;x02;x03;x04;x05;x06;x07] ;
[t1, y_fde121] = fde12(1,fdefun,t0,tfinal,y0,h) ;
[t2, y_fde122] = fde12(0.9,fdefun,t0,tfinal,y0,h) ;
[t3, y_fde123] = fde12(0.8,fdefun,t0,tfinal,y0,h) ;
[t4, y_fde124] = fde12(0.75,fdefun,t0,tfinal,y0,h) ;
figure(1)
plot(t1,y_fde121(1,:),'b',t2,y_fde122(1,:),'g',t3,y_fde123(1,:),'r',t4,y_fde124(1,:),'y');
xlabel('t') ; ylabel('Sa(t)') ;
h = legend('$\alpha=1$', '$\alpha=0.9$', '$\alpha=0.8$', '$\alpha=0.75$','k');
    set(h,'Interpreter','latex')
figure(2) 
plot(t1,y_fde121(2,:),'b',t2,y_fde122(2,:),'g',t3,y_fde123(2,:),'r',t4,y_fde124(2,:),'y');
xlabel('t') ; ylabel('E(t)') ;
h = legend('$\alpha=1$', '$\alpha=0.9$', '$\alpha=0.8$', '$\alpha=0.75$','k');
    set(h,'Interpreter','latex')

figure(3) 
plot(t1,y_fde121(3,:),'b',t2,y_fde122(3,:),'g',t3,y_fde123(3,:),'r',t4,y_fde124(3,:),'y');
xlabel('t') ; ylabel('Ib(t)') ;
h = legend('$\alpha=1$', '$\alpha=0.9$', '$\alpha=0.8$', '$\alpha=0.75$','k');
    set(h,'Interpreter','latex')

figure(4) 
plot(t1,y_fde121(4,:),'b',t2,y_fde122(4,:),'g',t3,y_fde123(4,:),'r',t4,y_fde124(4,:),'y');
xlabel('t') ; ylabel('R(t)') ;
h = legend('$\alpha=1$', '$\alpha=0.9$', '$\alpha=0.8$', '$\alpha=0.75$','k');
    set(h,'Interpreter','latex')
    
figure(5) 
plot(t1,y_fde121(5,:),'b',t2,y_fde122(5,:),'g',t3,y_fde123(5,:),'r',t4,y_fde124(5,:),'y');
xlabel('t') ; ylabel('V(t)') ;
h = legend('$\alpha=1$', '$\alpha=0.9$', '$\alpha=0.8$', '$\alpha=0.75$','k');
    set(h,'Interpreter','latex')
    
figure(6) 
plot(t1,y_fde121(6,:),'b',t2,y_fde122(6,:),'g',t3,y_fde123(6,:),'r',t4,y_fde124(6,:),'y');
xlabel('t') ; ylabel('Sb(t)') ;
h = legend('$\alpha=1$', '$\alpha=0.9$', '$\alpha=0.8$', '$\alpha=0.75$','k');
    set(h,'Interpreter','latex')
 
figure(7) 
plot(t1,y_fde121(7,:),'b',t2,y_fde122(7,:),'g',t3,y_fde123(7,:),'r',t4,y_fde124(7,:),'y');
xlabel('t') ; ylabel('Ia(t)') ;
h = legend('$\alpha=1$', '$\alpha=0.9$', '$\alpha=0.8$', '$\alpha=0.75$','k');
    set(h,'Interpreter','latex')   
% figure(3)
% plot(y_fde121(1,:), y_fde121(2,:),'m','LineWidth',2);
% xlabel('x(t)') ; ylabel('y(t)') ;
% figure(5)
% plot3(y_fde121(1,:), y_fde121(2,:),y_fde121(3,:),'m','LineWidth',1);
% xlabel('x(t)'); ylabel('y(t)'); zlabel('z(t)'); grid;