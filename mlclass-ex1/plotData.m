function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure

    % Instructions: Plot the training data into a figure using the
    %               "figure" and "plot" commands. Set the axes labels using
    %               the "xlabel" and "ylabel" commands.
    %
    % Hint: You can use the 'rx' option with plot to have the markers
    %       appear as red crosses. Furthermore, you can make the
    %       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

    figure; % open a new figure window

    plot(x, y, 'rx', 'MarkerSize', 10);         % plot the data
    ylabel('profit in $10,000s');               % set the y-axis label
    xlabel('Population of City in 10,000s');    % set the x-axis laabel

end
