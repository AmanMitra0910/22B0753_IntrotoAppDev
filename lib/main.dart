import 'package:flutter/material.dart';

void main() {
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState((){
      _counter--;
    });
  }
  void _zeroCounter(){
    setState((){
     _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter Value:',
              style: TextStyle(fontSize:20),
            ),
            Text(
              '$_counter',
              style: TextStyle( fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
            hoverColor: Colors.red,
            hoverElevation: 10,
            heroTag: null,
          ),
          FloatingActionButton(
              onPressed: _zeroCounter,
            tooltip: 'Reset',
            child: Icon(Icons.clear),
            hoverColor: Colors.purple,
            hoverElevation: 10,
            heroTag: null,
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
            hoverColor: Colors.green,
            hoverElevation: 10,
            heroTag: null,
          )
        ]
      ),
     // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
