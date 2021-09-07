import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/button_data.dart';
import 'package:flutter_calculator/calculator_button.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({ Key? key }) : super(key: key);

  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {

  String _expression = '';
  String _ans = '';
  double _num1 = 0.0;
  double _num2 = 0.0;

  // RegExp _aExp = RegExp(r'^d+([+-*/]/d+)+$');
  
  @override
  Widget build(BuildContext context) {
    List<ButtonData> _buttons = [
    ButtonData(
      lable: 'AC',
      textColor: Colors.green,
      onTap: () {
        SystemNavigator.pop();
      },
    ),
    ButtonData(
      lable: '+/-',
      textColor: Colors.green,
      onTap: () {
        var d = double.tryParse(_ans);
        if (d != null) {
          if (d > 0) {
            _ans = '-' + _ans;
            _expression = _ans;
          } else if (d < 0) {
            _ans = _ans.substring(1);
            _expression = _ans;
          }
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '%',
      textColor: Colors.green,
      onTap: () {
        /// 300 % 5 => 300 * 5 / 100
        if (double.tryParse(_expression) != null) {
          _expression = '$_expression % ';
          _ans = '';
        } else {
          var l = _expression.split(' ');
          double num1 = double.parse(l[0]);
          double num2 = double.parse(l[2]);
          _solution(num1: num1, num2: num2, operator: l[1]);
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '/',
      textColor: Colors.red,
      onTap: () {
        if (double.tryParse(_expression) != null) {
          _expression = '$_expression / ';
          _ans = '';
        } else {
          var l = _expression.split(' ');
          double num1 = double.parse(l[0]);
          double num2 = double.parse(l[2]);
          _solution(num1: num1, num2: num2, operator: l[1]);
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '7',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}7';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '8',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}8';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '9',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}9';
        setState(() {});
      },
    ),
    ButtonData(
      lable: 'x',
      textColor: Colors.red,
      onTap: () {
        if (double.tryParse(_expression) != null) {
          _expression = '$_expression * ';
          _ans = '';
        } else {
          var l = _expression.split(' ');
          double num1 = double.parse(l[0]);
          double num2 = double.parse(l[2]);
          _solution(num1: num1, num2: num2, operator: l[1]);
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '4',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}4';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '5',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}5';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '6',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}6';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '-',
      textColor: Colors.red,
      onTap: () {
        /// Case 1
        /// 55
        /// tryparse => not null
        /// 55 -
        /// Case 2
        /// 55 -
        /// tryparse => null
        /// cant't perform operation
        /// case 3
        /// 55 - 4
        /// tryparse => null
        /// num1 = 55, num2 = 4, operator = -
        /// call _solution method
        /// operations complete
        if (double.tryParse(_expression) != null) {
          _expression = '$_expression - ';
          _ans = '';
        } else {
          var l = _expression.split(' ');
          double num1 = double.parse(l[0]);
          double num2 = double.parse(l[2]);
          _solution(num1: num1, num2: num2, operator: l[1]);
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '1',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}1';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '2',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}2';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '3',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}3';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '+',
      textColor: Colors.red,
      onTap: () {
        if (double.tryParse(_expression) != null) {
          _expression = '$_expression + ';
          _ans = '';
        } else {
          var l = _expression.split(' ');
          double num1 = double.parse(l[0]);
          double num2 = double.parse(l[2]);
          _solution(num1: num1, num2: num2, operator: l[1]);
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: 'C',
      textColor: Colors.black,
      onTap: () {
        _expression = '';
        _ans = '';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '0',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        _expression = '${_expression}0';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '.',
      textColor: Colors.black,
      onTap: () {
        if (_ans.isNotEmpty) {
          _expression = '';
          _ans = '';
        }
        if (_expression.isEmpty) {
          _expression = '0.';
        } else {
          _expression = '${_expression}.';
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '=',
      textColor: Colors.red,
      onTap: () {
        var l =_expression.split(' ');
        if (l.length == 3) {
          double num1 = double.parse(l[0]);
          double num2 = double.parse(l[2]);
          _solution(num1: num1, num2: num2, operator: l[1]);
        }
        setState(() {});
      },
    ),
  ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  _expression,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 4.0,
                ),
                Text(
                  _ans,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey.withOpacity(0.1),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(36.0),
              )
            ),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
              ), 
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _buttons.length,
              itemBuilder: (context, index) {
                return CalculatorButton(
                  label: _buttons[index].lable,
                  contentColor: _buttons[index].textColor,
                  onTap: _buttons[index].onTap,
                );
              }
            ),
          ),
        ],
      ),
    );
  }

  _solution({required double num1, required double num2, required String operator}) {
    switch (operator) {
      case '+':
        _ans = (num1 + num2).toString();
        _expression = _ans;
        break;
      case '-':
        _ans = (num1 - num2).toString();
        _expression = _ans;
        break;
      case '*':
        _ans = (num1 * num2).toString();
        _expression = _ans;
        break;
      case '/':
        _ans = (num1 / num2).toString();
        _expression = _ans;
        break;
      case '%':
        _ans = (num1 * num2 / 100).toString();
        _expression = _ans;
        break;
      default:
    }
  }
}