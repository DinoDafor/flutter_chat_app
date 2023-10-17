import 'package:flutter/material.dart ';
import 'package:flutter_chat_app/others/SocketIOChat/ChatScreen.dart';
import 'package:flutter_chat_app/others/SocketIOChat/LoginScreen.dart';

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

  _openChatScreen(context) async {
    await Navigator.pushNamed(context, ChatScreen.ROUTE_ID);
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
          child: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      itemCount: _chatUsers.length,
                      itemBuilder: (context, index) {
                        User user = _chatUsers[index];
                        return ListTile(
                          onTap: () {
                            G.toChatUser = user;
                            _openChatScreen(context);
                          },
                          title: Text(user.name),
                          subtitle: Text('ID ${user.id}, Email: ${user.email}'),
                        );
                      }))
            ],
          )),
    );
  }
}
