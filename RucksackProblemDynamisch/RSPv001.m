clear
close all
clc
%% Data

% knapsack data
knapsackCapacity = 7;

% item data
Capacity = [3,1,3,4,2]';
Value = [2,2,4,5,3]';

item = table(Capacity, Value);

[a,b,c] = knapsackDynamic(knapsackCapacity, item);

%% knapsack dynamic algorithm
function [valueMax, sumTable, itemsPicked] = knapsackDynamic(knapsackCapacity, item)

%% declaration
itemCount = length(item.Capacity);
itemsPicked = [];
sumTable = zeros(length(item.Capacity) + 1,knapsackCapacity);

%% filling the knapsack table with the information 

% iterate rows (items) of the table
    for cntItem = 1:itemCount

    % iterate columns (knapsackCapacity) of the table
        for cntCap = 1:knapsackCapacity+1        

        % knapsack Capacity smaller than item capacity
            if cntCap <= item.Capacity(cntItem)            
                valueAbove = sumTable(cntItem, cntCap);
    
                sumTable(cntItem + 1, cntCap) = valueAbove;

        % knapsack Capacity bigger than item capacity
            else            
                valueItem = item.Value(cntItem);
                valueDiagonal = sumTable(cntItem, cntCap-item.Capacity(cntItem));
    
                sumTable(cntItem + 1, cntCap) = valueItem + valueDiagonal;    
            end
        end
    end

valueMax = sumTable(length(item.Capacity) + 1,knapsackCapacity+1);


%% choosing most suitable items by evaluating the table
columnActual = knapsackCapacity + 1;
items = linspace(itemCount+1,2,itemCount);
for rowActual = items
    rowAbove = rowActual-1;

    if sumTable(rowActual, columnActual) > sumTable(rowAbove, columnActual)
        itemsPicked(end+1) = rowActual-1;
        columnActual = columnActual - item.Capacity(rowActual-1);
    end
end

end