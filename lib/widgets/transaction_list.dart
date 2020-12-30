import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {
          return Card(
              child: Row(children: [
            Container(
              child: Text(
                '\$${transactions[index].amount.toStringAsFixed(2)}',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              margin: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 2,
              )),
              padding: EdgeInsets.all(10),
            ),
            Column(
              children: [
                Text(
                  transactions[index].title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  DateFormat.yMMMd().format(transactions[index].date),
                  style: TextStyle(color: Colors.grey),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )
          ]));
        },
      ),
    );
  }
}
