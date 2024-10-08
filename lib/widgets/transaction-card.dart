import 'package:budget/utils/icons-list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  TransactionCard({
    super.key,
    required this.data,
  });
  final dynamic data;

  var appIcons = AppIcons();

  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(data['timeStamp']);
    String formateDate = DateFormat('d MMM hh:mma').format(date);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 10),
                  color: Colors.grey.withOpacity(0.09),
                  blurRadius: 10,
                  spreadRadius: 4)
            ]),
        child: ListTile(
          minVerticalPadding: 10,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          leading: SizedBox(
            width: 50,
            height: 50,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: data['type'] == 'credit'
                      ? Colors.green.withOpacity(0.2)
                      : Colors.red.withOpacity(0.2)),
              child: Center(
                  child: FaIcon(
                      appIcons.getExpenseCategortIcons('${data['category']}'),
                      color: data['type'] == 'credit'
                          ? Colors.green.withOpacity(0.2)
                          : Colors.red.withOpacity(0.2))),
            ),
          ),
          title: Row(
            children: [
              Expanded(child: Text('${data['title']}')),
              Text(
                "${data['type'] == 'credit' ? '+ ' : '- '}${data['amount']}",
                style: TextStyle(
                    color:
                        data['type'] == 'credit' ? Colors.green : Colors.red),
              ),
            ],
          ),
          subtitle: Column(
            children: [
              Row(
                children: [
                  const Text(
                    'Balance',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                  const Spacer(),
                  Text(
                    '${data['remainingAmount']}',
                    style: const TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ],
              ),
              Text(
                formateDate,
                style: const TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
