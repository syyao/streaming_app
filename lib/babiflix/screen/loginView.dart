import 'package:flutter/material.dart';
import '../screen/Login_page.dart';
import '../screen/Login_page_Land.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _portraitPosition = true;
  @override
  Widget build(BuildContext context) {
    setState(() {
      _portraitPosition =
          MediaQuery.of(context).orientation == Orientation.portrait;
    });

    return Scaffold(
      body: (_portraitPosition) ? LoginPage() : LoginPageLand(),
    );
  }
}
