import 'package:flutter/material.dart';
import './transaction.dart';

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

  final List<Transaction> transactions = [
  Transaction(
    id: '1',
  title: 'New Shoes',
    amount: 69,
    date: DateTime.now()
  ),
    Transaction(
        id: '2',
        title: 'socks',
        amount: 10,
        date: DateTime.now()
    ),
    Transaction(
        id: '3',
        title: 'slip-ons',
        amount: 50,
        date: DateTime.now()
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter app"),
      ),
      body: Container(
        child: Column(
          children:<Widget> [
          Card(
            color: Colors.amber,
            child: Container(
              child: Text("chart!"),
              width: 100,
            ),
            elevation: 5,
          ),


          Column(children: transactions.map((tx) {
            return Card(child:
                Row (children: [
                  Container(
                    child: Text(tx.amount.toString(),
                    ),
                  ),
                  Column(
                    children: [
                    Text(tx.title),
                    Text(
                      tx.date.toString(),
                    )
                  ],)
                ],)

            );
          }).toList(),),
        ],
        ),
      ),
    );
  }
}
