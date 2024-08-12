import 'package:budget/screens/home-screen.dart';
import 'package:budget/screens/transaction-screen.dart';
import 'package:budget/widgets/navbar.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int currentIndex = 0;
  var pageViewList = [
    const HomeScreen(),
    const Transactionscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (int value) {
            setState(() {
              currentIndex = value;
            });
          }),
      body: pageViewList[currentIndex],
    );
  }
}
