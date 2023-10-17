import 'package:flutter/material.dart ';
import 'package:flutter_chat_app/others/SocketIOChat/ChatMessageModel.dart';
import 'package:flutter_chat_app/others/SocketIOChat/LoginScreen.dart';

import 'Global.dart';
import 'User.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  static const String ROUTE_ID = 'chat_screen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late List<ChatMessageModel> _chatMessages;
  late User _toChatUser;

  @override
  void initState() {
    super.initState();
  }
  _openLoginScreen(context) async {
    await Navigator.pushReplacementNamed(context, LoginScreen.ROUTE_ID);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Users"),
        actions: <Widget>[
          IconButton(onPressed: () {
            _openLoginScreen(context);
          }, icon: Icon(Icons.close)),
        ],
      ),
      body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: <Widget>[

            ],
          )),
    );
  }
}
