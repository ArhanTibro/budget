import 'package:budget/utils/icons-list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransactionsCard extends StatelessWidget {
  TransactionsCard({super.key});

  var appIcons = AppIcons();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                'Recent Transactions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              )
            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
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
                              color: Colors.green.withOpacity(0.2)),
                          child: Center(
                              child: FaIcon(
                                  appIcons.getExpenseCategortIcons('home'))),
                        ),
                      ),
                      title: const Row(
                        children: [
                          Expanded(child: Text('Car Rent August 2024')),
                          Text(
                            '6500',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                      subtitle: const Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Balance',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                              Spacer(),
                              Text(
                                '450',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 13),
                              ),
                            ],
                          ),
                          Text(
                            '13 August 2;40 PM',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
