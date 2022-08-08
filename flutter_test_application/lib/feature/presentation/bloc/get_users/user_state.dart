

import 'package:flutter_test_application/feature/model/user.dart';

abstract class UserState {}

class UserEmptyState extends UserState{

}
class UserInternetState extends UserState{}
class UserLoadingState extends UserState{
  

}
class UserLoadedState extends UserState{
  List<User> loadedUser;
  UserLoadedState({required this.loadedUser});

}
class UserErrorState extends UserState{
  

}
