import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/authwidget.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  @override
  Widget build(BuildContext context) {
    return const AuthWidgets();
  }
}
