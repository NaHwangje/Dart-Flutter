
https://flutter-ko.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png
1
import 'package:flutter/material.dart';
2
​
3
void main() => runApp(MyApp());
4
​
5
class MyApp extends StatelessWidget {
6
  @override
7
  Widget build(BuildContext context) {
8
    return MaterialApp(
9
      title: 'App Title',
10
      home: Scaffold(
11
        appBar: AppBar(
12
          title: const Text('AppBar Title'),
13
        ),
14
        body:
15
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
16
          groupAggregated,
17
        ]),
18
      ),
19
    );
20
  }
21
}
22
​
23
final groupAggregated = Container(
24
  padding: const EdgeInsets.all(20),
25
  child: Column(
26
    children: [
27
      const Text(
28
        'Shop Name',
29
        textDirection: TextDirection.ltr,
30
        style: TextStyle(
31
          fontSize: 32,
32
          color: Colors.black87,
33
        ),
34
      ),
35
      Center(
36
        child: Image.network(
37
            'https://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Dart-logo-icon.svg/2048px-Dart-logo-icon.svg.png',
38
            width: 300,
39
            height: 300),
40
      ),
41
      Container(
42
        padding: const EdgeInsets.all(20),
43
        child: Row(
44
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
45
          children: [
46
            Row(
47
              mainAxisSize: MainAxisSize.min,
48
              children: [
49
                Icon(Icons.star, color: Colors.green[500]),
50
                Icon(Icons.star, color: Colors.green[500]),
51
                const Icon(Icons.star, color: Colors.black),
52
              ],
53
            ),
54
            const Text(
55
              '170 Reviews',
56
              style: TextStyle(
57
                color: Colors.black,
58
                fontWeight: FontWeight.w800,
59
                fontFamily: 'Roboto',
60
                letterSpacing: 0.5,
61
                fontSize: 20,
62
              ),
63
            ),
64
          ],
65
        ),
66
      ),
67
      DefaultTextStyle.merge(
68
        style: const TextStyle(
69
          color: Colors.black,
70
          fontWeight: FontWeight.w800,
71
          fontFamily: 'Roboto',
72
          letterSpacing: 0.5,
73
          fontSize: 18,
74
        ),
75
        child: Container(
76
          padding: const EdgeInsets.all(20),
77
          child: Row(
78
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
79
            children: [
80
              Column(
81
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
82
                children: [
83
                  Icon(Icons.kitchen, color: Colors.green[500]),
84
                  const Text('kitchen:'),
85
                ],
86
              ),
87
              Column(
88
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
89
                children: [
90
                  Icon(Icons.timer, color: Colors.green[500]),
91
                  const Text('timer:'),
92
                ],
93
              ),
94
              Column(
95
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
96
                children: [
97
                  Icon(Icons.restaurant, color: Colors.green[500]),
98
                  const Text('restaurant:'),
99
                ],
100
              ),
101
            ],
102
          ),
103
        ),
104
      ),
105
    ],
106
  ),
107
);
108
​

keyboard
Privacy notice Send feedback
no issues
Based on Flutter 3.16.2 Dart SDK 3.2.2
info