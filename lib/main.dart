import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  final String title = 'Ngọc Anh';

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  //   // ++_counter;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                color: Color.fromARGB(255, 59, 12, 130),
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                  fontSize: 50, color: Color.fromARGB(255, 174, 25, 15)),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              _counter++;
              setState(() {
                //  _counter--;
              });
            },
            tooltip: 'Cộng',
            child: const Icon(Icons.add, color: Colors.pink),
          ),
          const SizedBox(width: 40),
          FloatingActionButton(
            onPressed: () {
              _counter--;
              setState(() {
                //  _counter--;
              });
            },
            tooltip: 'Trừ',
            child: const Icon(Icons.remove_circle_outline, color: Colors.pink),
          ),
          const SizedBox(width: 40),
          FloatingActionButton(
            onPressed: () {
              _counter = 0;
              setState(() {
                //  _counter--;
              });
            },
            tooltip: 'Reset',
            child: const Icon(Icons.restart_alt, color: Colors.pink),
          ),
        ],
      ),
    );
  }
}
