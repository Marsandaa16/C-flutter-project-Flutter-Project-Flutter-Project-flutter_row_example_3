
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Row Example 3'),
        ),
        body: RowExample(),
      ),
    );
  }
}

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExampleRow(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisText: 'MainAxisAlignment.start',
          ),
          ExampleRow(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisText: 'MainAxisAlignment.center',
          ),
          ExampleRow(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisText: 'MainAxisAlignment.end',
          ),
        ],
      ),
    );
  }
}

class ExampleRow extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final String mainAxisText;

  ExampleRow({required this.mainAxisAlignment, required this.mainAxisText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Row() Example',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Container(
            height: 400,
            color: Colors.grey[300],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RotatedBox(
                  quarterTurns: 3,
                  child: Text('CrossAxisAlignment.end'),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: mainAxisAlignment,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.green,
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                Text(mainAxisText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}