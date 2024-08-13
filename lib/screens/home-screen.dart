import 'package:budget/screens/login-screen.dart';
import 'package:budget/widgets/add-transaction-form.dart';
import 'package:budget/widgets/hero-card.dart';
import 'package:budget/widgets/transactions-cards.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isLogoutLoading = false;

  logOut() async {
    setState(() {
      isLogoutLoading = true;
    });
    await FirebaseAuth.instance.signOut();
    setState(() {
      isLogoutLoading = false;
    });
  }

  _dialogBuilder(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: AddTransactionForm(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue.shade900,
          onPressed: () {
            _dialogBuilder(context);
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: const Text(
            'Hello',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginView()),
                  );
                },
                icon: isLogoutLoading
                    ? const CircularProgressIndicator()
                    : const Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                      ))
          ],
        ),
        body: Column(
          children: [
            const HeroCard(), // This will stay fixed at the top
            Expanded(
              child: SingleChildScrollView(
                child: TransactionsCard(), // This will be scrollable
              ),
            ),
          ],
        ));
  }
}
