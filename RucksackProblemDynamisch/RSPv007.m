%% MOSI 1 Projektarbeit
% Rucksackproblem Dynamischer Algorithmus
% Benjamind Daiber, Pascal Tammer

%% Versionierung:
% v001 -> 
% v005 -> funktion des dynamischen algos ausgelagert
% v006 -> validierung hinzugefuegt
% v007 -> greedy einbinden


%% 
clear
close all
clc

%% data sets
DataSets

for i = 1:length(listOfDataSets)

    setName             = listOfDataSets(i).setName;
    knapsackCapacity    = listOfDataSets(i).knapsackCapacity;
    itemValue           = listOfDataSets(i).itemValue;
    itemCapacity        = listOfDataSets(i).itemCapacity;
    solution            = listOfDataSets(i).solution;

    %% function call
    [idx, binary, value, table] = knapsackDynamic(knapsackCapacity, itemValue, itemCapacity);
    
    %% validation
    try
        if binary == solution
            setName + " Ergebnis: true"
        else
            setName + " Ergebnis: false"
        end
    catch
        setName + " Ergebnis: false"
    end
end % ende der schleife

