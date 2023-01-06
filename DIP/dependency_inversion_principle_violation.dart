


// doesn't depend on abstraction
class UserBloc{
  final NetworkCall _networkCalls = NetworkCall(); // depend on low level class
  void getUserById(){
    _networkCalls.getUserByID(1);
  }
  void getTopUserLikedPosts(){
    _networkCalls.getTopUserLikedPosts();
  }
}

//doesn't depend on abstraction
class NetworkCalls{
  Future getUserByID(int id)async{
    print('id');
  }
  Future getTopUserLikedPosts()async{
    print('');
  }
}