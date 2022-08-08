import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_test_application/feature/presentation/bloc/get_users/user_bloc.dart';
import 'package:flutter_test_application/feature/presentation/screens/user_list_screen/user_list_screen.dart';
import 'package:flutter_test_application/feature/services/user_repository.dart';

import 'feature/presentation/screens/splash_screen/splash_screen.dart';

void main()async {
  
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
final userRepository=UserRepository();


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=> UserBloc(getAllUsers: userRepository),
      child: NewWidget(),
    );
  }
}

class NewWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserListScreen(),
      initialRoute: '/page',
      routes: {
        '/page': (context) => SplashScreen(),
        '/page1': (context) => UserListScreen(),
      },
    );
  }
}
