import 'package:flutter_chat_app/others/SocketIOChat/LoginScreen.dart';

import 'ChatUsersScreen.dart';

class Routes {
  static routes() {
    return {
      //todo почему передаем context? какие данные передаются, ведь это другие скрины.
      LoginScreen.ROUTE_ID: (context) => const LoginScreen(),
      ChatUsersScreen.ROUTE_ID: (context) => const ChatUsersScreen(),

    };
  }
  static initScreen() {
    return LoginScreen.ROUTE_ID;
  }
}