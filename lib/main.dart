import 'package:vindoapp/constant/route_constants.dart';
import 'package:vindoapp/pages/AddExpenditurePage.dart';
import 'package:vindoapp/pages/AddIncomePage.dart';
import 'package:vindoapp/pages/DetailCashFlowPage.dart';
import 'package:vindoapp/pages/HomePage.dart';
import 'package:vindoapp/pages/LoginPage.dart';
import 'package:vindoapp/pages/SettingsPage.dart';
import 'package:vindoapp/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => UserProvider()),
  ], child: const MyApp()));
}

final routes = {
  loginRoute: (BuildContext context) => LoginPage(),
  homeRoute: (BuildContext context) => HomePage(),
  settingsRoute: (BuildContext context) => SettingsPage(),
  addExpenseRoute: (BuildContext context) => AddExpenditurePage(),
  addIncomeRoute: (BuildContext context) => AddIncomePage(),
  detailCashFlowRoute: (BuildContext context) => DetailCashFlowPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "vindoApp",
      theme: ThemeData(primaryColor: Colors.deepPurple),
      routes: routes,
    );
  }
}
