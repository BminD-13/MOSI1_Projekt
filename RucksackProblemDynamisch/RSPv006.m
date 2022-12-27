%% MOSI 1 Projektarbeit
% Rucksackproblem Dynamischer Algorithmus
% Benjamind Daiber, Pascal Tammer

%% Versionierung:
% v001 -> 
% v005 -> funktion des dynamischen algos ausgelagert
% v006 -> validierung hinzugefuegt
% v007 -> 


%% 
clear
close all
clc

%% data sets
P03

%% function call
[idx, binary, value, table] = knapsackDynamic(knapsackCapacity, item);

%% validation
"Tabelle"
table
"Maximaler Wert"
value 


if binary == solution 
    "Ergebnis"
    "true"
else 
    "Ergebnis"
    "false"
end
    