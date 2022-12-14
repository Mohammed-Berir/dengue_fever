clear all; clc;close all 
syms x1 x2 x3 x4 x5 x6 x7 v pi_b p beta_b mu_b gamma delta_b theta pi_a m beta_a mu_a
[solx1,solx2,solx3,solx4,solx5,solx6,solx7]= solve((1-v)*pi_b-p*beta_b*x1*x7-mu_b*x1+gamma*x4==0,...
p*beta_b*x1*x7-(delta_b+mu_b)*x2==0,...
delta_b*x2-(theta+mu_b)*x3==0,...
theta*x2-(gamma+m*theta+mu_b)*x4==0,...
v*pi_b+m*theta*x4-mu_b*x5==0,...
pi_a - p*beta_a*x6*x3-mu_a*x6==0,...
p*beta_a*x6*x3-mu_a*x7,x1,x2,x3,x4,x5,x6,x7);
E1=[solx1(1,:); solx2(1,:);solx3(1,:); solx4(1,:);solx5(1,:); solx6(1,:); solx7(1,:)]
E2=[solx1(2,:); solx2(2,:);solx3(2,:); solx4(2,:);solx5(2,:); solx6(2,:); solx7(2,:)]
% E3=[solx1(3,:); solx2(3,:);solx3(3,:); solx4(3,:);solx5(3,:); solx6(3,:); solx7(3,:)]
% E4=[solx1(4,:); solx2(4,:);solx3(4,:); solx4(4,:);solx5(4,:); solx6(4,:); solx7(4,:)]
% E5=[solx1(5,:); solx2(5,:);solx3(5,:); solx4(5,:);solx5(5,:); solx6(5,:); solx7(5,:)]
% E6=[solx1(6,:); solx2(6,:);solx3(6,:); solx4(6,:);solx5(6,:); solx6(6,:); solx7(6,:)]
% E7=[solx1(7,:); solx2(7,:);solx3(7,:); solx4(7,:);solx5(7,:); solx6(7,:); solx7(7,:)]



A=jacobian([(1-v)*pi_b-p*beta_b*x1*x7-mu_b*x1+gamma*x4,...
p*beta_b*x1*x7-(delta_b+mu_b)*x2,...
delta_b*x2-(theta+mu_b)*x3,...
theta*x2-(gamma+m*theta+mu_b)*x4,...
v*pi_b+m*theta*x4-mu_b*x5,...
pi_a - p*beta_a*x6*x3-mu_a*x6,...
p*beta_a*x6*x3-mu_a*x7],[x1;x2;x3;x4;x5;x6;x7]);

J1=subs(A,{x1,x2,x3,x4,x5,x6,x7},{E1(1,:),E1(2,:),E1(3,:),E1(4,:),E1(5,:),E1(6,:),E1(7,:)})
% A=jacobian([a*x1-b*x1*x2+e*x2 , b*x1*x2+(c-d-e)*x2],[x1;x2]);

% polyA =collect(det(lambda*eye(2)-A),lambda);
% J1=subs(A,{x1,x2},{E1(1,:),E1(2,:)});
%finding the matrix the jacobain after
% eigE1=(eig(J1));

% J2=subs(A,{x1,x2},{E2(1,:),E2(2,:)});
%finding the matrix the jacobain after
% eigE2=(eig(J2))
% [r,p]=subexpr(eigE2,p)

% polyA =collect(det(lambda*eye(3)-J1),lambda); % finding the polynonail of lambda
% solutions = solve(lambda^3+(sigma1+2)*lambda^2+(gamma +sigma1)*lambda-2*sigma1+2*gamma*sigma1 == 0, lambda, 'MaxDegree', 3); % solution the polynomail
% [r, sigma] =subexpr(solutions)
% simplifyFraction(r,'Expand',true)
% [r,p]=(subexpr(solutions,'p'))
%  simplify(r)

% % eq1 = det(A-I*x) == 0 ;
% eigVal =solve(polyA,lambda)
% eigenA = solve(polyA,lambda)
% [r,p]=subexpr(eigVal,p)
% charpoly(A) # 
% syms x  y  z  a  b lambda  p
% eqn =lambda^3+(a+2)*lambda^2+(x^2+2*a-a*b+a*z+1)*lambda+a*x^2+a*y*x+a-a*b+a*z==0;
% sol = solve(eqn,lambda);
% simplify(subs(sol))
% lambda = root(polyA)
% [r,p]=subexpr(lambda,p)
%simplifyFraction(subs(r))
% A =[-sigma,sigma,0;gamma-x3,-1, -x1;x2,x1, -1]