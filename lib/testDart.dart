import 'package:flutter/material.dart';

class QuikSortTest extends StatefulWidget {
  const QuikSortTest({super.key});

  @override
  State<QuikSortTest> createState() => _QuikSortTestState();
}

class _QuikSortTestState extends State<QuikSortTest> {
  final _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  String typedNumUser = "";

  int result = 0;

  void greetResult() {
    int rebuild = 0;
    result = int.parse(_textEditingController.text);
    rebuild = factorial(result);
    setState(() {
      result = rebuild;
      typedNumUser = _textEditingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test of Quick Sort'),
        ),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: _textEditingController,
                maxLength: 50,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(label: Text('Write a number')),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(typedNumUser),
                  ),
                  Spacer(),
                  ElevatedButton(
                      onPressed: greetResult, child: Text('$result')),
                  Spacer(),
                  ElevatedButton(
                    onPressed: greetResult,
                    child: Text('Result'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back to main"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int factorial(int n) {
  if (n == 0) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}
