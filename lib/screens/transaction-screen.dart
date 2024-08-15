import 'package:budget/widgets/category-list.dart';
import 'package:budget/widgets/tab-bar-view.dart';
import 'package:budget/widgets/time-line-month.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Transactionscreen extends StatefulWidget {
  const Transactionscreen({super.key});

  @override
  State<Transactionscreen> createState() => _TransactionscreenState();
}

class _TransactionscreenState extends State<Transactionscreen> {
  var category = 'All';
  var monthyear = '';
  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    setState(() {
      monthyear = DateFormat('MMM y').format(now);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansive'),
      ),
      body: Column(
        children: [
          TimeLineMonth(
            onChanged: (String? value) {
              if (value != null) {
                setState(() {
                  monthyear = value;
                });
              }
            },
          ),
          CategoryList(onChanged: (String? value) {
            if (value != null) {
              setState(() {
                category = value;
              });
            }
          }),
          TypeTabBar(
            category: category,
            monthyear: monthyear,
          ),
        ],
      ),
    );
  }
}
