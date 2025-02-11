function fth = label(titlestring, xpos, ypos, varargin)
    % xpos and ypos are normalized values between 0 and 1

    %% Inputparser
    p = inputParser();
    p.CaseSensitive = false;
    p.addOptional('alignment', 'left');
    p.addOptional('verticalalignment', 'bottom');
    p.addOptional('Color', 'black');
    p.addOptional('fontsize', 12);
    p.addOptional('unit', 'normalized');
    p.parse(varargin{:});
    %%%%%%%%%%%%%%%%%%%%%%%%%%
    fontsize = p.Results.fontsize; 
    col = p.Results.Color; 
    alignment = p.Results.alignment;
    verticalalignment = p.Results.verticalalignment;
    unit = p.Results.unit;
    %%

    % Check if titlestring is numeric and round it to two decimal places if it is
    if isnumeric(titlestring)
        titlestring = sprintf('%.2f', titlestring);
    end

    % Create the text label
    fth = text(xpos, ypos, titlestring, 'units', unit, 'horizontalalignment', alignment, ...
        'verticalalignment', verticalalignment, 'fontsize', fontsize, 'Color', col, 'interpreter', 'latex');
end
