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

% algorithmus
function [valueMax, sumTable, itemsPicked] = knapsackDynamic(knapsackCapacity, item)
itemsPicked=0;
sumTable = zeros(length(item.Capacity) + 1,knapsackCapacity);

% filling the table with the information 
for cntItem = 1:length(item.Capacity)
    for cntCap = 1:knapsackCapacity+1        
        if cntCap <= item.Capacity(cntItem)            
            valueAbove = sumTable(cntItem, cntCap);

            sumTable(cntItem + 1, cntCap) = valueAbove;

        else            
            valueItem = item.Value(cntItem);
            valueDiagonal = sumTable(cntItem, cntCap-item.Capacity(cntItem));

            sumTable(cntItem + 1, cntCap) = valueItem + valueDiagonal;

        end
    end
end
valueMax = sumTable(length(item.Capacity) + 1,knapsackCapacity);
end