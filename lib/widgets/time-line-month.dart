import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class TimeLineMonth extends StatefulWidget {
  const TimeLineMonth({super.key});

  @override
  State<TimeLineMonth> createState() => _TimeLineMonthState();
}

class _TimeLineMonthState extends State<TimeLineMonth> {
  String currentMont = "";
  List<String> months = [];

  @override
  void initState() {
    super.initState();
    DateTime now = DateTime.now();
    for (int i = -13; i <= 0; i++) {
      months.add(
          DateFormat('MMM y').format(DateTime(now.year, now.month + i, 1)));
    }
    currentMont = DateFormat('MMM y').format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
          itemCount: months.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentMont = months[index];
                });
              },
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: currentMont == months[index]
                        ? Colors.blue.shade900
                        : Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)),
                width: 80,
                child: Center(child: Text(months[index])),
              ),
            );
          }),
    );
  }
}
