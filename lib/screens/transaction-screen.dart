import 'package:budget/widgets/time-line-month.dart';
import 'package:flutter/material.dart';

class Transactionscreen extends StatelessWidget {
  const Transactionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansive'),
      ),
      body: const Column(
        children: [
          TimeLineMonth(),
        ],
      ),
    );
  }
}
