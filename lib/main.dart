import 'package:architectureboilerplate/base/di.dart';
import 'package:architectureboilerplate/ui/login/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  setUpInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const LoginView(),
    );
  }
}
