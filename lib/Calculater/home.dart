import 'package:flutter/material.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _output = '0';
  String _outputBuffer = '';
  double _num1 = 0;
  double _num2 = 0;
  String _operand = '';

  void _buttonPressed(String buttonText) {
    if (buttonText == 'C') {
      _output = '0';
      _outputBuffer = '';
      _num1 = 0;
      _num2 = 0;
      _operand = '';
    } else if (buttonText == '+' || buttonText == '-' || buttonText == '*' || buttonText == '/') {
      _num1 = double.parse(_output);
      _operand = buttonText;
      _outputBuffer = '';
    } else if (buttonText == '=') {
      _num2 = double.parse(_outputBuffer);
      if (_operand == '+') {
        _output = (_num1 + _num2).toString();
      }
      if (_operand == '-') {
        _output = (_num1 - _num2).toString();
      }
      if (_operand == '*') {
        _output = (_num1 * _num2).toString();
      }
      if (_operand == '/') {
        _output = (_num1 / _num2).toString();
      }
      _num1 = 0;
      _num2 = 0;
      _operand = '';
      _outputBuffer = '';
    } else {
      _outputBuffer += buttonText;
      _output = _outputBuffer;
    }
    setState(() {});
  }

  Widget _buildButton(String buttonText) {
    return Expanded(
      child: OutlinedButton(
       // padding: EdgeInsets.all(24.0),
        onPressed: () => _buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
              child: Text(
                _output,
                style: TextStyle(fontSize: 48.0, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    _buildButton('7'),
                    _buildButton('8'),
                    _buildButton('9'),
                    _buildButton('/'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    _buildButton('4'),
                    _buildButton('5'),
                    _buildButton('6'),
                    _buildButton('*'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    _buildButton('1'),
                    _buildButton('2'),
                    _buildButton('3'),
                    _buildButton('-'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    _buildButton('.'),
                    _buildButton('0'),
                    _buildButton('C'),
                    _buildButton('+'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    _buildButton('='),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
