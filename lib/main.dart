import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter app"),
      ),
      body: Column(
        children:<Widget> [
        Card(
          color: Colors.amber,
          child: Container(
            child: Text("chart!"),
            width: 100,
          ),
          elevation: 5,
        ),


        Card(child: Text("list of txt !"),
        ),
      ],
      ),
    );
  }
}
