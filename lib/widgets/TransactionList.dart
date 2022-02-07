import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_2/model/Transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
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
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map(
            (transaction) {
          return Card(
            elevation: 5.0,
            margin: const EdgeInsets.symmetric(
              horizontal: 10.0,
              vertical: 15.0,
            ),
            color: const Color(0xFFDCBB94),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFEDDAC3),
                      border: Border.all(
                        color: const Color(0xFF8F6330),
                        width: 2,
                      ),
                    ),
                    margin: const EdgeInsets.all(10.0),
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "\$" + transaction.amount.toString(),
                      style: const TextStyle(
                        color: Color(0xFF8F6330),
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transaction.title,
                        style: const TextStyle(
                            color: Color(0xFF8F4430), fontSize: 10.0),
                      ),
                      Text(
                        DateFormat.yMMMd().format(transaction.dateTime),
                        style: const TextStyle(
                          color: Color(0xFFA5857D),
                          fontSize: 10.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
