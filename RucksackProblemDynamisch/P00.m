% p00

% knapsack data
knapsackCapacity = 7;

Capacity = [3,1,3,4,2]';

Value = [2,2,4,5,3]';

item = table(Capacity, Value);

solution = [
    0
    1
    0
    1
    1
];
