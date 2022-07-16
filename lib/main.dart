import 'package:flutter/material.dart';
import 'package:minimal_login/language/language_items.dart';
import 'package:minimal_login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: ColorUtility().grey),
        home: LoginPage());
  }
}

class ColorUtility {
  //Arka Plan
  final grey = Colors.grey.shade300;

  final black87 = Colors.black87;

  final deepPurple = Colors.deepPurple;
  final indigo = Colors.indigo;
  final white = Colors.white;
  final grey200 = Colors.grey.shade200;
  final black54 = Colors.grey.shade800;
}
