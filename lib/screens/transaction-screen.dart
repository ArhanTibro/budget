import 'package:budget/widgets/category-list.dart';
import 'package:budget/widgets/tab-bar-view.dart';
import 'package:budget/widgets/time-line-month.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Transactionscreen extends StatelessWidget {
  const Transactionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansive'),
      ),
      body: Column(
        children: [
          TimeLineMonth(
            onChanged: (String? value) {},
          ),
          CategoryList(onChanged: (String? value) {
            if (value != null) {}
          }),
          TypeTabBar(),
        ],
      ),
    );
  }
}
