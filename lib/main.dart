import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart%20';
import 'package:flutter_chat_app/others/SocketIOChat/Routes.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.routes(),
      initialRoute: Routes.initScreen(),
    );
  }
}
