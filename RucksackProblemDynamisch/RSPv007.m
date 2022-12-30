%% MOSI 1 Projektarbeit
% Rucksackproblem Dynamischer Algorithmus
% Benjamind Daiber, Pascal Tammer

%% Versionierung:
% v0.01 -> dyn algo test
% v0.05 -> funktion des dynamischen algos ausgelagert
% v0.06 -> validierung hinzugefuegt
% v0.07 -> validierung in schleifen mit geänderten und neuen datensätzen


%% 
clear
close all
clc

%% data sets
DataSets

%% aufruf der datensaetze in einer schleife
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

