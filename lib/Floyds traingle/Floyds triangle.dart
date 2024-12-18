import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Floyd\'s Triangle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Floyd\'s Triangle in Flutter'),
        ),
        body: FloydsTriangleWidget(),
      ),
    );
  }
}

class FloydsTriangleWidget extends StatefulWidget {
  @override
  _FloydsTriangleWidgetState createState() => _FloydsTriangleWidgetState();
}

class _FloydsTriangleWidgetState extends State<FloydsTriangleWidget> {
  int _numRows = 5;  // You can change this number to increase the number of rows

  // Function to generate Floyd's Triangle up to `n` rows
  List<List<int>> generateFloydsTriangle(int numRows) {
    List<List<int>> triangle = [];
    int currentNumber = 1;

    for (int i = 1; i <= numRows; i++) {
      List<int> row = [];
      for (int j = 1; j <= i; j++) {
        row.add(currentNumber);
        currentNumber++;
      }
      triangle.add(row);
    }

    return triangle;
  }

  @override
  Widget build(BuildContext context) {
    List<List<int>> floydsTriangle = generateFloydsTriangle(_numRows);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var row in floydsTriangle)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var number in row)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$number',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
              ],
            ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _numRows++; // Increases the number of rows when the button is pressed
              });
            },
            child: Text('Increase Rows'),
          ),
        ],
      ),
    );
  }
}
