import 'package:flutter/material.dart';
import 'package:expenses_app/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  List<Transaction> transactions = [];

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tr) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 2),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  'R\$ ${tr.amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    tr.title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    tr.description,
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  Text(
                    DateFormat('d MMM y').format(tr.date),
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
