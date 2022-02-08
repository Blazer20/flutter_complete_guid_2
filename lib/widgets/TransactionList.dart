import 'package:flutter/material.dart';
import 'package:flutter_complete_guide_2/model/Transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> myTransactions;

  const TransactionList({Key? key, required this.myTransactions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.flipped.height,
      child: ListView.builder(
        itemCount: myTransactions.length,
        itemBuilder: (context, position) {
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
                      "\$" + myTransactions[position].amount.toString(),
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
                        myTransactions[position].title,
                        style: const TextStyle(
                            color: Color(0xFF8F4430), fontSize: 10.0),
                      ),
                      Text(
                        DateFormat.yMMMd().format(myTransactions[position].dateTime),
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
      ),
    );
  }
}
