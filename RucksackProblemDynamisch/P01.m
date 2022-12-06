% p01
knapsackCapacity = 165;

Capacity = [
    23
    31
    29
    44
    53
    38
    63
    85
    89
    82
]';

Value = [
    92
    57
    49
    68
    60
    43
    67
    84
    87
    72
]';

item = table(Capacity, Value);

solution = [
    1
    0
    0
    0
    1
    0
    0
    0
    1
    0
];