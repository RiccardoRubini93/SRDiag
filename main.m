close all;
clear all;

A = rand(10,10);
A = 0.5*(A + A');
A = A'*A;

[X,fval] = constrained_opt(A);

[u,v] = eig(A);

norm(sort(eig(X'*A*X)) - sort(eig(A)),'fro')

%v

v_ = X'*A*X;


figure(2)
semilogy(sort(diag(v),'descend'),"r--o"); hold on
semilogy(sort(diag(v_),'descend'),"b--s")