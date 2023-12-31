

import 'package:flutter/material.dart';
import 'package:tobetoapp/pages/expense_list.dart';
import 'package:tobetoapp/widgets/new_expense.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: const Text("Expense App"),
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context, builder: (ctx) =>  NewExpense());
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      body: ExpenseList(),
    );
  }
}