%% knapsack dynamic algorithm
function [itemsPickedIdx, itemsPickedBinary, valueMax, sumTable] = knapsackDynamic(knapsackCapacity, item)
% gives back the items needet for the max value

%% declaration
itemCount = length(item.Capacity);
itemsPickedIdx = [];
itemsPickedBinary = zeros(itemCount,1);
sumTable = zeros(length(item.Capacity) + 1,knapsackCapacity+1);

%% filling the knapsack table with the information 

% iterate rows (items) of the table
    for iRowAbove = 1:itemCount
        iRowActual = iRowAbove +1;

    % iterate columns (knapsackCapacity) of the table
        for iColumnActual = 1:knapsackCapacity+1

            valueAbove = sumTable(iRowAbove, iColumnActual);

        % knapsack Capacity < item capacity
            if iColumnActual <= item.Capacity(iRowAbove)
                valueAbove = sumTable(iRowAbove, iColumnActual);
                sumTable(iRowActual, iColumnActual) = valueAbove;

        % knapsack Capacity >= item capacity
            else            
                valueItem = item.Value(iRowAbove);
                columnCapShift = iColumnActual-item.Capacity(iRowAbove);
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
            jColumnActual = jColumnActual - item.Capacity(jRowActual-1);
        end
    end

end