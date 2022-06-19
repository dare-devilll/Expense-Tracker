import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  late String titleInput;
  late String amountInput;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onChanged: (val) {
                titleInput = val;
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              onChanged: (val) => amountInput = val,
            ),
            TextButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlue,
              ),
              onPressed: () {
                print(titleInput);
                print(amountInput);
              },
            )
          ],
        ),
      ),
    );
  }
}
