import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';

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
            return Card(
                child: Row (
                  children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text(tx.amount.toString(),
                    ),),
                  Column(
                    children: [
                    Text(tx.title,
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.deepOrange,
                      ),
                      
                    ),
                    Text(
                      DateFormat().format(tx.date),
                      style: TextStyle(
                        color: Colors.blueGrey,
                      ),
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
