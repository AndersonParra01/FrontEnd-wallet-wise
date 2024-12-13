import 'package:flutter/material.dart';
import 'package:wallet_wise_app/presentation/pages/home.dart';
import 'package:wallet_wise_app/presentation/pages/login.dart';

class Routes {
  static const String login = '/login';
  static const String home = '/home';

  static Map<String, WidgetBuilder> get routes {
    return {
      login: (context) => loginPage(),
      home: (context) => homePage(),
    };
  }
}
