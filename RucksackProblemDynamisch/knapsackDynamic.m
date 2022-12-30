%% knapsack dynamic algorithm
function [itemsPickedIdx, itemsPickedBinary, valueMax, sumTable] = knapsackDynamic(knapsackCapacity, itemValue, itemCapacity)
% gives back the items for the max value

%% output preset
itemsPickedIdx      = [];
itemsPickedBinary   = [];
valueMax            = 0;
sumTable            = [];
    
%% checking input
if knapsackCapacity <= 0
    warning("knapsackCapacity <= 0")
elseif mod(knapsackCapacity, 1) ~= 0
    warning("knapsackCapacity in no integer")
elseif length(itemCapacity) ~= length(itemValue)
    warning("input Vectors with different length")
elseif min(itemValue) <= 0
    warning("itemValue <= 0")
elseif min(itemCapacity) <= 0
    warning("itemCapacity <= 0")
else % running function if no mistake is given
    
    %% declaration
    itemCount = length(itemCapacity);
    itemsPickedIdx      = [];
    itemsPickedBinary   = zeros(itemCount,1);
    sumTable            = zeros(itemCount + 1,knapsackCapacity+1);

    %% filling the knapsack table with information 
    
    % iterate rows (items) of the table
        for iRowAbove = 1:itemCount
            iRowActual = iRowAbove +1;
    
        % iterate columns (knapsackCapacity) of the table
            for iColumnActual = 1:knapsackCapacity+1
    
                valueAbove = sumTable(iRowAbove, iColumnActual);
    
            % knapsack Capacity < item capacity
                if iColumnActual <= itemCapacity(iRowAbove)
                    valueAbove = sumTable(iRowAbove, iColumnActual);
                    sumTable(iRowActual, iColumnActual) = valueAbove;
    
            % knapsack Capacity >= item capacity
                else            
                    valueItem = itemValue(iRowAbove);
                    columnCapShift = iColumnActual-itemCapacity(iRowAbove);
                    valueDiagonal = sumTable(iRowAbove, columnCapShift);
                    if valueItem + valueDiagonal >= valueAbove
                        sumTable(iRowActual, iColumnActual) = valueItem + valueDiagonal; 
                    else
                        sumTable(iRowActual, iColumnActual) = valueAbove;
                    end
                end
            end
        end
    
        valueMax = sumTable(end, end);
    
    %% choosing most suitable items by evaluating the table
        jColumnActual = knapsackCapacity + 1;
        items = linspace(itemCount+1,2,itemCount);
        for jRowActual = items
            jRowAbove = jRowActual-1;
        
            if sumTable(jRowActual, jColumnActual) > sumTable(jRowAbove, jColumnActual)
                itemsPickedIdx(end+1) = jRowAbove;
                itemsPickedBinary(jRowAbove) = 1;
                jColumnActual = jColumnActual - itemCapacity(jRowActual-1);
            end
        end
        itemsPickedIdx = fliplr(itemsPickedIdx);

end % end of checking inputs
end % end of function
