 import 'package:equatable/equatable.dart';



class User extends Equatable {
  final int id;
  final String login;
  final String avatar_url;
 

  const User({
    required this.id,
    required this.login,
    required this.avatar_url,
   
  });

  factory User.fromJson(Map<String,dynamic> json){
    return User(
      id: json['id'],
      login: json['login'],
      avatar_url: json['avatar_url'],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props =>[id,login,avatar_url];
}
