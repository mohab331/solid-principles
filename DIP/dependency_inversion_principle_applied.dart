abstract class NetworkTask{
  Future getUserByID();
  Future getTopUserLikedPosts();
}


// Depend on abstraction
class UserBloc{
  UserBloc(this._networkTask)
  final NetworkTask _networkTask;// doesn't depend on low level class
  void getUserById(){
    _networkTask.getUserByID(1);
  }
  void getTopUserLikedPosts(){
    _networkTask.getTopUserLikedPosts();
  }
}

// depend on abstraction
class NetworkCalls implements NetworkTask{
  @override
  Future getUserByID(int id)async{
    print('id');
  }
  @override
  Future getTopUserLikedPosts()async{
    print('');
  }
}