function plot_graph(h, diff1, diff2)
    % plots a log-log graph given h values and the differences:
    %   diff1 = |d0-d1|
    %   diff2 = |d0-d2|
    
    %[1e-18, 2e-1, 1e-17, 1]
    
    c = ['r' 'b'];   % colors

    for i=1:size(diff1,1)
       loglog(h, diff1(i,:), strcat(c(i),'-'),...
           h, diff2(i,:), strcat(c(i),'--')); 
       hold on;
    end
    
    axis([1e-18, 2e-1, 1e-17, 1]);
    
    title('Errors |d0-d1| (solid, red:a=1, blue:a=10) and |d0-d2| (dashed, red:a=1, blue:a=10) vs h');
    xlabel('h');
    ylabel('errors');
    axis tight;
    
    saveas(gcf,'loglog-plot.png')