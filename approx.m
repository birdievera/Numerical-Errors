function res = approx(a, h)
    % returns the approximate value by 
    % sqrt(a+h)-sqrt(a-h)/2h given a list of h
    
    res = zeros(size(a, 2), size(h, 2));
    for i=1:size(a,2)
        res(i, :) = (sqrt(a(i)+h)-sqrt(a(i)-h))./(2*h);
    end