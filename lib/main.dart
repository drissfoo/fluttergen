import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttergen/api_bindings.dart';
import 'package:fluttergen/example.dart';
import 'package:fluttergen/exampleKotlin.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int firstValue = 0;
  int secondValue = 0;

  @override
  void initState() {
    super.initState();
    firstValue = 0;
    secondValue = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TextField(
              onChanged: (text) {
                setState(() {
                  firstValue =  int.parse(text);
                });
              },
              keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: false),
            ),
            TextField(
              onChanged: (text) {
                setState(() {
                  secondValue = int.parse(text);
                });
              },
              keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: false),
            ),
            Text(
              'Sum is ${_getSum(firstValue, secondValue)}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

int _getSum(int a, int b){
  if(Platform.isAndroid){
    return Example.sum(a, b);
  }else{
    final lib = SwiftLibrary(DynamicLibrary.process());
    final exa = ExampleObjc.alloc(lib);

    return ExampleObjc.add_to_(lib, a, b);
  }
}
