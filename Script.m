clc;clear;

Ncases = 8;
Nruns = 100;


for ca = 1:Ncases
    
    [lb,ub,fobj] = ProblemDetails(ca);

    for rs=1:Nruns
        display([num2str(ca) '=>' num2str(rs)])
        rng(rs,'twister')
        
        [~, FVAL(rs,ca), ~, ~] = SanitizedTLBO(fobj,lb,ub,125,100);
        
    end
end