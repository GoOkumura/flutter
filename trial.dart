import 'package:flutter/material.dart';

// Step1
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
// Step2_2 変更
      // home: MyHomePage(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
// Step2_2 追加
  final String title;
// Step2_2 変更
//const MyHomePage();
  const MyHomePage({required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Step4_2　追加
// Step5_2　変更
//final int _counter = 0;
  int _counter = 0;

// Step5_2 追加
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
// Step2_1 追加
      appBar: AppBar(
// Step2_2 変更
        // title: const Text('Flutter Demo Home Page'),
        title: Text(widget.title),
      ),
// Step3 追加
      body: Center(
// Step4_1 変更
        // child: Text('You have pushed the button this many times:'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
// Step4_2 変更
              // '0',
              _counter.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
// Step5_1 追加
// 変更部分5_2 変更
      // floatingActionButton: const FloatingActionButton(
      floatingActionButton: FloatingActionButton(
// 変更部分5_2 変更
        // onPressed: null,
        onPressed: _incrementCounter,
// 変更部分5_2 変更
        // child: Icon(Icons.add),
        child: const Icon(Icons.add),
      ),
    );
  }
}
