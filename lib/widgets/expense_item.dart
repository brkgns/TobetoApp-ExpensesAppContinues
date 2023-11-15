
import 'package:flutter/material.dart';
import 'package:tobetoapp/models/expense.dart';


class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {Key? key}) : super(key: key);
  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.name),
            Row(
              children: [
                Text("${expense.price.toStringAsFixed(2)} ₺"),
                const SizedBox(width: 8),
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 8),
                Text(expense.formattedDate)
              ],
            )
          ],
        ),
      ),
    );
  }
}