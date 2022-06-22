import 'package:flutter/material.dart';
import 'package:flutterwidget/widgets/new_transaction.dart';
import 'package:flutterwidget/widgets/transaction_list.dart';
import 'package:flutterwidget/widgets/user_transaction.dart';
import 'models/transaction.dart';
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
  // final List<Transaction> transactions = [
  //   Transaction(id: '1', title: 'New Shoes', amount: 69, date: DateTime.now()),
  //   Transaction(id: '2', title: 'socks', amount: 10, date: DateTime.now()),
  //   Transaction(id: '3', title: 'slip-ons', amount: 50, date: DateTime.now()),
  // ];
  late String titleInput;
  late String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flutter app"),
      ),
      body: Container(
        color: Colors.white54,
        child: Column(
          children: <Widget>[
            Card(
              color: Colors.amber,
              child: Container(
                child: Text("chart!"),
                width: 100,
              ),
              elevation: 5,
            ),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
