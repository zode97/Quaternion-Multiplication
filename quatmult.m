function q=quatprod(qa,qb)
    % All quaternions q, qa and qb are 1x4 vectors 

    n = size(qa,1);
    q = zeros(n,4);
    for n = 1:n
        qa0 = qa(n,1);
        qa1 = qa(n,2);
        qa2 = qa(n,3);
        qa3 = qa(n,4);

        qb0 = qb(n,1);
        qb1 = qb(n,2);
        qb2 = qb(n,3);
        qb3 = qb(n,4);

        q(n,1) = qb0*qa0 - qb1*qa1 - qb2*qa2 - qb3*qa3;
        q(n,2) = qb0*qa1 + qb1*qa0 - qb2*qa3 + qb3*qa2;
        q(n,3) = qb0*qa2 + qb1*qa3 + qb2*qa0 - qb3*qa1;
        q(n,4) = qb0*qa3 - qb1*qa2 + qb2*qa1 + qb3*qa0;
    
end



q1=rand(1,4);
q1=q1/norm(q1);
q2=rand(1,4);
q2=q2/norm(q2);
q=quatprod(q1,q2);
