import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'config/routes.dart';
import 'config/themes.dart';

void main() {
  usePathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet wise',
      initialRoute: Routes.login,
      routes: Routes.routes,
      theme: AppThemes.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
