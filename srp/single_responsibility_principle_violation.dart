class User{
  final String name;
  final String email;
  final int age;
  final bool isMember;

  User({required this.name , required this.email , required this.age , required this.isMember,});

  /// this is related to the responsibility of the User class
  bool canFollowMembers(){
    return this.isMember;
  }

  /// this violates single responsibility principle as it is not the responsibility of user class to sign in user
  void userSignIn(){
    verifyUserEmail();
  }

  /// this violates single responsibility principle as it is not the responsibility of user class to sign out user
  void signOut(){}

  /// this violates single responsibility principle as it is not the responsibility of user class to verify the email
  bool verifyUserEmail(){
    return this.email.contains('@');
  }
}

