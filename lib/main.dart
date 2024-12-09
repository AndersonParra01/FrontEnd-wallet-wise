import 'package:flutter/material.dart';
import 'package:wallet_wise_app/presentation/pages/login.dart';
import 'config/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet wise',
      initialRoute:
          Routes.login, // Initial route to be displayed when the app starts
      routes: {Routes.login: (context) => login()},
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
