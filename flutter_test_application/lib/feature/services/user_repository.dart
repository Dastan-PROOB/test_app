import 'package:flutter_test_application/feature/model/user.dart';
import 'package:flutter_test_application/feature/services/user_api_provider.dart';

class UserRepository{
  final UserProvider _userProvider=UserProvider();
  Future<List<User>> getAllUsers()=> _userProvider.getUsers();
}