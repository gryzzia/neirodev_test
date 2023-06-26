import 'package:flutter/material.dart';
import 'package:neirodev1/page/auth.dart';




void main() async {
  runApp(const NeirodevApp());
  WidgetsFlutterBinding.ensureInitialized();
}

class NeirodevApp extends StatelessWidget {
  const NeirodevApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Calibri',
        primaryColor: Colors.white,
      ),
      home: const AuthPage(),
    );
  }
}
