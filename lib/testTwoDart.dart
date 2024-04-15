import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondTest extends StatelessWidget {
  const SecondTest({super.key});

  @override
  Widget build(BuildContext context) {
    int numberOne = 5;

    int factorial(numberOne) {
      if (numberOne == 1) {
        return numberOne;
      } else {
        return numberOne * factorial(numberOne - 1);
      }
    }

    int result = factorial(numberOne);

    final _intController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hey its a FactorialGame'),
        ),
        body: Center(
          child: Card(
            elevation: 5,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: _intController,
                    maxLength: 50,
                    decoration: InputDecoration(label: Text('Hello')),
                  ),
                  Text(
                    'Choose Two Numbers',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(_intController.text),
                      NumberButton(number: result),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  const NumberButton({required this.number, super.key});

  final int number;
  int factorial(number) {
    if (number == 1) {
      return number;
    } else {
      return number * factorial(number - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    int? newNumber;
    return ElevatedButton(
      onPressed: () {},
      child: Text('$number'),
    );
  }
}
