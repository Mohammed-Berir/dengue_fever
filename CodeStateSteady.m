clear all; clc;close all 
syms x1 x2 x3  a  b lambda p gamma sigma
[solx1,solx2,solx3]= solve(sigma*(x2-x1)==0 , -x2-x1*x3+gamma*x1==0,-x3+x1*x2==0, x1,x2,x3)
A= jacobian([sigma*(x2-x1) , -x2-x1*x3+gamma*x1,-x3+x1*x2], [x1;x2;x3])
polyA =collect(det(lambda*eye(3)-A),lambda)
eigenA = solve(polyA)
[r,p]=subexpr(eigenA,p)
% charpoly(A) # 
% syms x  y  z  a  b lambda  p
% eqn =lambda^3+(a+2)*lambda^2+(x^2+2*a-a*b+a*z+1)*lambda+a*x^2+a*y*x+a-a*b+a*z==0;
% sol = solve(eqn,lambda);
% simplify(subs(sol))
% lambda = eig(A);
% [r,p]=subexpr(lambda,p)
%simplifyFraction(subs(r))


