import 'package:flutter/material.dart';

import 'package:onion/routes.dart' as routes;
import 'package:onion/pages/authentication/login.dart';
import 'package:onion/pages/home/home.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_app_installations/firebase_app_installations.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'firebase_options.dart';

import 'dart:developer' as developer;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  print(analytics.app);
  String id = await FirebaseInstallations.instance.getId();
  // String token = await FirebaseInstallations.instance.getToken();
  developer.log("Firebase Initilized id:$id", name: 'Onion');
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
