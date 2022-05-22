import 'package:flutter/material.dart';

import 'package:onion/routes.dart' as routes;
import 'package:onion/pages/authentication/login.dart';
import 'package:onion/pages/home/home.dart';

void main() {
  runApp(const OnionApp());
}

class OnionApp extends StatelessWidget {
  const OnionApp({Key? key}) : super(key: key);

  static const String loginRoute = routes.loginRoute;
  static const String homeRoute = routes.homeRoute;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
        fontFamily: 'OpenSans',
      ),
      initialRoute: loginRoute,
      routes: <String, WidgetBuilder>{
        homeRoute: (context) => const HomePage(),
        loginRoute: (context) => const LoginPage(),
      },
    );
  }
}
