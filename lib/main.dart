import 'package:flutter/material.dart';
import 'package:simple_chat_app_ui/Util/util.dart';

import 'Screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: lightThemeData(context),
      home: const WelcomeScreen(),
    );
  }
}



