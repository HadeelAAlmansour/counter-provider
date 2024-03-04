import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'Counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: MaterialApp(
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'counter using provider',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(
              onPressed: Provider.of<Counter>(context).incrementCounter,
              icon: Icon(Icons.add),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${Provider.of<Counter>(context).counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
            IconButton(
              onPressed: Provider.of<Counter>(context).decrementCounter,
              icon: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
