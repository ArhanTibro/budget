import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcons {
  final List<Map<String, dynamic>> homeExpensesCategories = [
    {
      "name": "Gas Filling",
      "icon": FontAwesomeIcons.gasPump,
    },
    {
      "name": "Internet",
      "icon": FontAwesomeIcons.wifi,
    },
    {
      "name": "Grocery",
      "icon": FontAwesomeIcons.basketShopping,
    },
    {
      "name": "Electricity Bill",
      "icon": FontAwesomeIcons.bolt,
    },
    {
      "name": "Water Bill",
      "icon": FontAwesomeIcons.faucet,
    },
    {
      "name": "Rent",
      "icon": FontAwesomeIcons.house,
    },
    {
      "name": "Maintenance",
      "icon": FontAwesomeIcons.screwdriverWrench,
    },
    {
      "name": "Household Items",
      "icon": FontAwesomeIcons.broom,
    },
  ];
  IconData getExpenseCategortIcons(String categoryName) {
    final category = homeExpensesCategories.firstWhere(
        (category) => category['name'] == categoryName,
        orElse: () => {
              "icon": FontAwesomeIcons.moneyCheckDollar,
            });
    return category['icon'];
  }
}
