import 'package:flutter/material.dart';
import 'package:messagingapp/pages/homepage.dart';
import 'package:messagingapp/pages/widgets/chatpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xFFF5F5F3),
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xFFF5F5F3),
              foregroundColor: Color(0xFF113953))),
      routes: {
        "/": (context) => HomePage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}
