import 'package:flutter/material.dart';

class ExpensesTracker extends StatefulWidget {
  const ExpensesTracker({super.key});
  @override
  State<ExpensesTracker> createState() {
    return _ExpensesTrackerState();
  }
}

class _ExpensesTrackerState extends State<ExpensesTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Text('The chart'),
          Text('Expenses list'),
        ],
      ),
    );
  }
}
