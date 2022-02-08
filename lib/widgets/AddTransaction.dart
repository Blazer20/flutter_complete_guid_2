import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function(String, double) myAddNewTransaction;

  AddTransaction({Key? key, required this.myAddNewTransaction})
      : super(key: key);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount =
        double.parse(amountController.text.replaceAll(RegExp(r'[^0-9]'), ''));

    if(enteredTitle.isEmpty || enteredAmount <= 0) return;

    myAddNewTransaction(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
              keyboardType: TextInputType.number,
              keyboardAppearance: Brightness.dark,
              onSubmitted: (_) => submitData(),
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
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              keyboardAppearance: Brightness.dark,
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
                child: const Text(
                  'Enabled',
                  style: TextStyle(
                    color: Color(0xFF8F6330),
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () => submitData(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
