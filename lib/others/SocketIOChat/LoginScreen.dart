import 'package:flutter/material.dart ';
import 'package:flutter_chat_app/others/SocketIOChat/ChatUsersScreen.dart';

import 'Global.dart';
import 'User.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String ROUTE_ID = 'login_screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lets's Chat"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(20.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            OutlinedButton(
                onPressed: () {
                  _loginBtnTap();
                },
                child: Text("LOGI"))
          ],
        ),
      ),
    );
  }

  _loginBtnTap() {
    if (_usernameController.text.isEmpty) {
      return;
    }
    User me = G.dummyUsers[0];
    if(_usernameController.text != 'a') {
      me = G.dummyUsers[1];
    }
    G.loggedInUser = me;

    _openChatUsersScreen(context);
  }

  _openChatUsersScreen(context) async {
    await Navigator.pushReplacementNamed(context, ChatUsersScreen.ROUTE_ID);
  }
}
