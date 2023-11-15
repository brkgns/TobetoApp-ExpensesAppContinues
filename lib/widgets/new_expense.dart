import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  // Controller
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime _date = DateTime.now();

  void changeDateText(date) {
    setState(() {
      _date = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Expense Name")),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(label: Text("Amount"), prefixText: "₺"),
          ),
          IconButton(
              onPressed: () async {
                var date = await showDatePicker(context: context,initialDate: _date, firstDate: DateTime(1980,1,1), lastDate: DateTime.now());
                if (date != null) {
                  changeDateText(date);
                }

                // DatePicker açmak..
                // DatePicker'dan gelen değeri Text olarak yazdırmak
              },
              icon: const Icon(Icons.calendar_month)),
          const Text(
              "Tarih Seçiniz.."), // seçilen tarihi formatlayarak yazdırmak..
          ElevatedButton(
              onPressed: () {
                print("Kayıt başarılı: ${_nameController.text}");
              },
              child: const Text("Kaydet"))
        ],
      ),
    );
  }
}