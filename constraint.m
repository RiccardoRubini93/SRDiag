function [c,ceq] = constraint(x)
    global lambda a;
    X = x*(x'*x)^(-1/2);
    a_tilde = X'*a*X;
    %ceq =  norm(a_tilde - diag(diag(a_tilde)),'fro');
    ceq = sum(sum((a_tilde - diag(diag(a_tilde))).^2)); %  - 1e-12;
    c = [];
end
