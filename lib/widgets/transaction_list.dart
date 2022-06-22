import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
            child: Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45, width: 3),
              ),
              padding: EdgeInsets.all(10),
              child: Text(
                tx.amount.toString(),
              ),
            ),
            Column(
              children: [
                Text(
                  tx.title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
                Text(
                  DateFormat().format(tx.date),
                  style: TextStyle(
                    color: Colors.black26,
                  ),
                )
              ],
            )
          ],
        ));
      }).toList(),
    );
  }
}
