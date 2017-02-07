function res = approx_alt(a, h)
    % returns the result of forward difference
    % sqrt(x+h)-sqrt(x)/h
    
    res = zeros(size(a, 2), size(h, 2));
    for i=1:size(a,2)
        res(i, :) = ( sqrt( (a(i)./(h.^2)) + (1./h) )- sqrt( (a(i)./(h.^2)) - (1./h) ) )/2;
    end
    
    %res = zeros(size(a, 2), size(h, 2));
    %for i=1:size(a,2)
    %    res(i, :) = (sqrt(a(i)+h)-sqrt(a(i)))./(h);
    %end
    