import 'package:flutter/material.dart';

void main() => runApp(MyFirstApp());

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _counterState(),
            ],
          ),
        ),
      ),
    );
  }
}

class _counterState extends StatefulWidget {
  int counter = 50;

  @override
  _counterStateState createState() => _counterStateState();
}

class _counterStateState extends State<_counterState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Tap "+" to increment',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
        Container(
          width: 90,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.indigo[200],
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  widget.counter == widget.counter--;
                }),
                child: Icon(Icons.remove),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${widget.counter}', style: TextStyle(fontSize: 25),),
              ),
              GestureDetector(
                onTap: () => setState(() {
                  widget.counter++;
                }),
                child: Icon(Icons.add),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Tap "-" to decrement',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ],
    );
  }
}