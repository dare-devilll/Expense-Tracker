import 'package:flutter/material.dart';
import 'package:flutterwidget/models/transaction.dart';
import 'package:flutterwidget/widgets/new_transaction.dart';
import 'package:flutterwidget/widgets/transaction_list.dart';

class UserTransactions extends StatelessWidget {
  final List<Transaction> _usertransactions = [
    Transaction(id: '1', title: 'New Shoes', amount: 69, date: DateTime.now()),
    Transaction(id: '2', title: 'socks', amount: 10, date: DateTime.now()),
    Transaction(id: '3', title: 'slip-ons', amount: 50, date: DateTime.now()),
  ];

  void _addNewTrasaction(String title, double amount) {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(_usertransactions),
      ],  
    );
  }
}
