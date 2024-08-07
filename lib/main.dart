import 'package:flutter/material.dart';
import 'package:flutter_application_6/screen/login.dart';
import 'package:flutter_application_6/wedget/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: WelcomeWidget(),
    );
  }
}
