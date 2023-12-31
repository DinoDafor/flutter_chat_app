import 'User.dart';

class G {
  static late List<User> dummyUsers;
  static late User loggedInUser;
  static late User toChatUser;

  static void initDummyUsers() {
    User userA = User(id: 1000, name: 'A', email: 'testa@gmail.com');
    User userB = User(id: 1000, name: 'B', email: 'testb@gmail.com');

    // dummyUsers = List<User>();
    dummyUsers = [];
    dummyUsers.add(userA);
    dummyUsers.add(userB);
  }

  static List<User> getUsersFor(User user) {
    List<User> filteredUsers = dummyUsers
        .where(
          (u) => (!u.name.toLowerCase().contains(user.name.toLowerCase())),
        )
        .toList();
    return filteredUsers;
  }
}
