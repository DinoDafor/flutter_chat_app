import 'package:flutter/material.dart ';

import 'Global.dart';
import 'User.dart';

class ChatUsersScreen extends StatefulWidget {

  const ChatUsersScreen({super.key});

  static const String ROUTE_ID = 'chat_users_screen';

  @override
  State<ChatUsersScreen> createState() => _ChatUsersScreenState();
}

class _ChatUsersScreenState extends State<ChatUsersScreen> {

 late List<User> _chatUsers;

  @override
  void initState() {
    super.initState();
    _chatUsers = G.getUsersFor(G.loggedInUser);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Users"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30.0),

      ),
    );
  }
}
