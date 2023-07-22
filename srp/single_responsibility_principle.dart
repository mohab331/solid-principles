// In the following example,
// we have a class called [UserData] that violates the Single Responsibility Principle (SRP).
// This class handles both fetching user data from the server and displaying it on the UI,
// which means it has more than one responsibility. and if we need to change in ui we will change in this class, also if we need to
// change in fetching data we will change in this class.

class UserData {
  Future<User> fetchUserData() async {
    // Fetch user data from the server.
    return User();
  }

  void displayUserData(User user) {
    // Display user data on the UI.
  }
}



// To apply and follow the Single Responsibility Principle (SRP), we should refactor the [UserData] class
// into two separate classes: one for fetching data and another for displaying data.

// Let's create two classes: [UserRepository] for fetching data and [UserUI] for displaying data.

class UserRepository {
  Future<User> fetchUserData() async {
    // Fetch user data from the server.
    return User();
  }
}

class UserUI {
  void displayUserData(User user) {
    // Display user data on the UI.
  }
}

// By splitting the responsibilities into distinct classes,
// we ensure that each class has a single responsibility,
// making the codebase more organized and easier to maintain.
// The [UserRepository] class is now responsible for fetching user data, and the [UserUI] class handles the task
// of displaying user data on the UI. This design follows the principles of SRP, leading to a cleaner and more scalable codebase.
// and now each class has its own responsability and will have only one reason to change.
class User {}