function calc_errors()
    % calculates the errors between 
    %   d0 - deriv_sqrtx: derivative of square root x
    %   d1 - approx: central difference using h
    %   d2 - approx_alt: forward difference using h
    
    % set up values a=1,10 for x, 10^-i (n=1,..17)
    a = [1, 10];
    n = 1:17;
    h = 10.^-(n);
    
    % perform error checks
    d0 = deriv_sqrtx(a);
    d1 = approx(a, h);
    d2 = approx_alt(a, h);
    
    % differences between calculations
    diff1 = abs(d0'-d1);
    diff2 = abs(d0'-d2);
    
    for j=1:size(a,2)
        fprintf('\na=%d\n', a(j));
        for i=n
            fprintf('%3d %17.14f %17.14f %17.14f %8.1e %8.1e\n',...
                i, d0(j), d1(j, i), d2(j, i), diff1(j, i), diff2(j, i));
        end
    end
    
    % plot the log-log graph
    plot_graph(h, diff1, diff2);
    