import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    List<ButtonData> _buttons = [
    ButtonData(
      lable: 'AC',
      textColor: Colors.green,
      onTap: () {},
    ),
    ButtonData(
      lable: '+/-',
      textColor: Colors.green,
      onTap: () {},
    ),
    ButtonData(
      lable: '%',
      textColor: Colors.green,
      onTap: () {},
    ),
    ButtonData(
      lable: '/',
      textColor: Colors.red,
      onTap: () {
        if (_expression.isNotEmpty) {
          _expression = '$_expression / ';
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '7',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}7';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '8',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}8';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '9',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}9';
        setState(() {});
      },
    ),
    ButtonData(
      lable: 'x',
      textColor: Colors.red,
      onTap: () {
        if (_expression.isNotEmpty) {
          _expression = '$_expression * ';
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '4',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}4';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '5',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}5';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '6',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}6';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '-',
      textColor: Colors.red,
      onTap: () {
        if (_expression.isNotEmpty) {
          _expression = '$_expression - ';
        }
        setState(() {});
      },
    ),
    ButtonData(
      lable: '1',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}1';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '2',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}2';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '3',
      textColor: Colors.black,
      onTap: () {
        _expression = '${_expression}3';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '+',
      textColor: Colors.red,
      onTap: () {
        if (_expression.isNotEmpty) {
          _expression = '$_expression + ';
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
        _expression = '${_expression}0';
        setState(() {});
      },
    ),
    ButtonData(
      lable: '.',
      textColor: Colors.black,
      onTap: () {
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
      onTap: () {},
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
}