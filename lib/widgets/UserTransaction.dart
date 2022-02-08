import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_2/model/Transaction.dart';
import 'package:flutter_complete_guide_2/widgets/AddTransaction.dart';
import 'package:flutter_complete_guide_2/widgets/TransactionList.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> transactions = [
    Transaction(
      id: '1',
      title: 'New Computer',
      amount: 1299.99,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Weekly spending',
      amount: 15.99,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: '1',
      title: 'New Computer',
      amount: 1299.99,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Weekly spending',
      amount: 15.99,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: '1',
      title: 'New Computer',
      amount: 1299.99,
      dateTime: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Weekly spending',
      amount: 15.99,
      dateTime: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      dateTime: DateTime.now(),
    );

    log("before " + transactions.length.toString());
    setState(() {
      transactions.add(newTransaction);
    });
    log("after " + transactions.length.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AddTransaction(
          myAddNewTransaction: _addNewTransaction,
        ),
        TransactionList(
          myTransactions: transactions,
        ),
      ],
    );
  }
}
