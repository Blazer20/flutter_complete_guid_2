import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_complete_guide_2/widgets/TransactionList.dart';
import 'package:intl/intl.dart';
import 'model/Transaction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Expanse'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Card(
            elevation: 5.0,
            margin: EdgeInsets.all(5.0),
            color: Color(0xFFDCBB94),
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: Text(
                'Chart!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 10.0,
            ),
            color: const Color(0xFFDCBB94),
            elevation: 5.0,
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    cursorColor: const Color(0xFF8F6330),
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      focusColor: Color(0xFF8F6330),
                      labelStyle: TextStyle(
                        color: Color(0xFF8F6330),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF8F6330),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF8F6330),
                        ),
                      ),
                    ),
                    controller: titleController,
                  ),
                  TextField(
                    cursorColor: const Color(0xFF8F6330),
                    decoration: const InputDecoration(
                      labelText: 'Amount',
                      focusColor: Color(0xFF8F6330),
                      labelStyle: TextStyle(
                        color: Color(0xFF8F6330),
                      ),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF8F6330),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF8F6330),
                        ),
                      ),
                    ),
                    controller: amountController,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8.0),
                    child: TextButton(
                      onPressed: () {
                        if (kDebugMode) {
                          print('Title: ' +
                              titleController.text +
                              ", Amount: " +
                              amountController.text);
                        }
                      },
                      child: const Text(
                        'Enabled',
                        style: TextStyle(
                          color: Color(0xFF8F6330),
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TransactionList(),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
