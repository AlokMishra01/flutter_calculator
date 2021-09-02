import 'package:flutter/material.dart';
import 'package:flutter_calculator/calculator_button.dart';

class CalculatorView extends StatefulWidget {
  const CalculatorView({ Key? key }) : super(key: key);

  @override
  _CalculatorViewState createState() => _CalculatorViewState();
}

class _CalculatorViewState extends State<CalculatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
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
              itemCount: 20,
              itemBuilder: (context, index) {
                return CalculatorButton(
                  label: '1',
                  contentColor: Colors.red,
                  onTap: () {
                  },
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}