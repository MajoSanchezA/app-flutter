import 'package:flutter/material.dart';
import 'package:mi_app_dos/features/login/widgets/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginView(),
      ),
    );
  }
}
