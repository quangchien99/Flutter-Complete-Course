import 'package:expense_tracker_app/models/expense.dart';
import 'package:expense_tracker_app/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

class ExpensesTracker extends StatefulWidget {
  const ExpensesTracker({super.key});
  @override
  State<ExpensesTracker> createState() {
    return _ExpensesTrackerState();
  }
}

class _ExpensesTrackerState extends State<ExpensesTracker> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 11.11,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Books',
        amount: 22.22,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'KFC',
        amount: 33.33,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Camping',
        amount: 44.44,
        date: DateTime.now(),
        category: Category.travel),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The chart'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
