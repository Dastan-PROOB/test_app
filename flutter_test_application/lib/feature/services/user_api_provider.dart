import 'dart:convert';

import 'package:flutter_test_application/feature/model/user.dart';
import 'package:http/http.dart' as http;
class UserProvider {
  Future<List<User>> getUsers() async {
    final response= await http.get(Uri.parse('https://api.github.com/users'));

    if(response.statusCode==200){
      final List<dynamic> userJson=json.decode(response.body);
      return userJson.map((json) => User.fromJson(json)).toList();
    }
    else{
      throw Exception('Error fetching users');
    }
  }
}
