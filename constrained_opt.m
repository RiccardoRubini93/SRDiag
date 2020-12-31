function [X,fval] = constrained_opt(a)
    
    global lambda a; 
    
    lambda = eig(a);
    n = length(lambda);
    x0 = rand(n,n);
          
    options = optimoptions('fmincon',...
    'Algorithm','sqp','Display','iter','ConstraintTolerance',1e-12,...
    'MaxFunctionEvaluations',1e8);
    
    [x,fval] = fmincon(@objective,x0,[],[],[],[],[],[],@constraint,options);
    
    X = x*(x'*x)^(-1/2);
    
end
