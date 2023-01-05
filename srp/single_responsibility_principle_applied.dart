/// Here we apply SRP as each class has only one reason to change , each class is responsible for one thing

/// class only responsible for user
class User {
  final String name;
  final String email;
  final int age;
  final bool isMember;

  User({
    required this.name,
    required this.email,
    required this.age,
    required this.isMember,
  });

  /// this is related to the responsibility of the User class
  bool canFollowMembers() {
    return this.isMember;
  }
}

/// mixin only responsible for validation
mixin validators {
  bool verifyEmail({required String email}) {
    return email.contains('@');
  }
}

/// class only responsible for user authentication
class UserAuth with validators {
  void signIn({required User user}) {
    verifyEmail(email: user.email);
  }

  void signOut({required User user}) {}
}




