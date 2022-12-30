%% p00
P00.setName = "P00";
P00.knapsackCapacity = 7;
P00.itemCapacity = [3,1,3,4,2]';
P00.itemValue = [2,2,4,5,3]';
P00.solution = [
    0
    1
    0
    1
    1
];

%% P01
P01.setName = "P01";
P01.knapsackCapacity = 165;
P01.itemCapacity = [
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
P01.itemValue = [
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
P01.solution = [
1
1
1
1
0
1
0
0
0
0
];

%% P02
P02.setName = "P02";
P02.knapsackCapacity = 26;
P02.itemCapacity = [
    12
    7
    11
    8
    9
]';
P02.itemValue = [
    24
    13 
    23
    15
    16
]';
P02.solution = [
    0
    1
    1
    1
    0
];

%% P03.
P03.setName = "P03";
P03.knapsackCapacity = 190;
P03.itemCapacity = [
    56
    59
    80
    64
    75
    17
]';
P03.itemValue = [
    50
    50
    64
    46
    50
     5
]';
P03.solution = [
    1
    1
    0
    0
    1
    0
];

%% P04.
P04.setName = "P04";
P04.knapsackCapacity = 50;
P04.itemCapacity = [
31
10
20
19
 4
 3
 6
]';
P04.itemValue = [
70
20
39
37
 7
 5
10
]';
P04.solution = [
1
0
0
1
0
0
0
];

%% P05.
P05.setName = "P05";
P05.knapsackCapacity = 104;
P05.itemCapacity = [
25
35
45
 5
25
 3
 2
 2
]';
P05.itemValue = [
350
400
450
 20
 70
  8
  5
  5
]';
P05.solution = [
1
0
1
1
1
0
1
1
];

%% P06.
P06.setName = "P06";
P06.knapsackCapacity = 170;
P06.itemCapacity = [
41
50
49
59
55
57
60
]';
P06.itemValue = [
442
525
511
593
546
564
617
]';
P06.solution = [
0
1
0
1
0
0
1
];

%% P07.
P07.setName = "P07";
P07.knapsackCapacity = 750;
P07.itemCapacity = [
 70
 73
 77
 80
 82
 87
 90
 94
 98
106
110
113
115
118
120
]';
P07.itemValue = [
135
139
149
150
156
163
173
184
192
201
210
214
221
229
240
]';
P07.solution = [
1
0
1
0
1
0
1
1
1
0
0
0
0
1
1
];

%% P08.
P08.setName = "P08";
P08.knapsackCapacity = 6404180;
P08.itemCapacity = [
382745
799601
909247
729069
467902
 44328
 34610
698150
823460
903959
853665
551830
610856
670702
488960
951111
323046
446298
931161
 31385
496951
264724
224916
169684
]';
P08.itemValue = [
 825594
1677009
1676628
1523970
 943972
  97426
  69666
1296457
1679693
1902996
1844992
1049289
1252836
1319836
 953277
2067538
 675367
 853655
1826027
  65731
 901489
 577243
 466257
 369261
]';
P08.solution = [
1
1
0
1
1
1
0
0
0
1
1
0
1
0
0
1
0
0
0
0
0
1
1
1
];


%% P10 fehler knapsackCapacity 
P10.setName = "P10";
P10.knapsackCapacity = 0;
P10.itemCapacity = [3,1,3,4,2]';
P10.itemValue = [2,2,4,5,3]';
P10.solution = [
    0
    1
    0
    1
    1
];

%% P11 fehler knapsackCapacity
P11.setName = "P11";
P11.knapsackCapacity = -5;
P11.itemCapacity = [3,1,3,4,2]';
P11.itemValue = [2,2,4,5,3]';
P11.solution = [
    0
    1
    0
    1
    1
];

%% P12 fehler unterschiedlich viele elemente
P12.setName = "P12";
P12.knapsackCapacity = 7;
P12.itemCapacity = [3,1,3,4,2,6]';
P12.itemValue = [2,2,4,5,3]';
P12.solution = [
    0
    1
    0
    1
    1
];

%% P13 fehler unterschiedlich viele elemente
P13.setName = "P13";
P13.knapsackCapacity = 7;
P13.itemCapacity = [3,1,3,4,2]';
P13.itemValue = [2,2,4,5,3,6]';
P13.solution = [
    0
    1
    0
    1
    1
];

%% P14 fehler wert zu klein
P14.setName = "P14";
P14.knapsackCapacity = 7;
P14.itemCapacity = [3,1,3,0,2]';
P14.itemValue = [2,2,4,5,3]';
P14.solution = [
    0
    1
    0
    1
    1
];

%% P15 fehler wert zu klein
P15.setName = "P15";
P15.knapsackCapacity = 7;
P15.itemCapacity = [3,1,3,4,2]';
P15.itemValue = [2,0,4,5,3]';
P15.solution = [
    0
    1
    0
    1
    1
];

%% P16 fehler kein integer
P16.setName = "P16";
P16.knapsackCapacity = 7.5;
P16.itemCapacity = [3,1,3,4,2]';
P16.itemValue = [2,2,4,5,3]';
P16.solution = [
    0
    1
    0
    1
    1
];

%% P17 fehler kein integer
P17.setName = "P17";
P17.knapsackCapacity = 7;
P17.itemCapacity = [3,2,3,4,2]';
P17.itemValue = [2,2,4,5,3]';
P17.solution = [
    0
    1
    0
    1
    1
];

%% P18 fehler kein integer
P18.setName = "P18";
P18.knapsackCapacity = 7;
P18.itemCapacity = [3,1,3,4,2]';
P18.itemValue = [2,2,4,4,3]';
P18.solution = [
    0
    1
    0
    1
    1
];

%% P20 fehler kein integer
P20.setName = "P20";
P20.knapsackCapacity = 1;
P20.itemCapacity = [3,7,3,4,2]';
P20.itemValue = [2,2,4,5,3]';
P20.solution = [
    0
    0
    0
    0
    0
];

%% P21 fehler kein integer
P21.setName = "P21";
P21.knapsackCapacity = 100;
P21.itemCapacity = [3,1,3,4,2]';
P21.itemValue = [2,2,4,5,3]';
P21.solution = [
    1
    1
    1
    1
    1
];

%% P22 fehler kein integer
P22.setName = "P22";
P22.knapsackCapacity = 1000;
P22.itemCapacity = randi([1 100],1,1000)';
P22.itemValue = randi([1 100],1,1000)';
P22.solution = [
    0
    1
    0
    1
    1
];


%% liste aller datensätze
listOfDataSets = [
    P00, P01, P02, P03, P04, P05, P06, P07, P08, P10, P11, P12, P13, P14, P15, P16, P17, P18, P20, P21, P22
];
