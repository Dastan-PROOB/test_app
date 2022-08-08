import 'dart:io';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_test_application/feature/presentation/bloc/get_users/user_bloc.dart';
import 'package:flutter_test_application/feature/presentation/bloc/get_users/user_state.dart';
import 'package:flutter_test_application/feature/presentation/screens/user_detail_screen/user_detail_screen.dart';

class UserListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        if (state is UserEmptyState) {
          return const Center(
              child: Text(
            'No data received. Please press button "Load"',
            style: TextStyle(fontSize: 20),
          ));
        }
        
        if (state is UserLoadingState) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state is UserLoadedState) {
          return ListView.builder(
              itemCount: state.loadedUser.length,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserDetailScreen(
                                  asd: state.loadedUser[index],
                                )),
                      );
                    },
                    child: Container(
                      color: index % 2 == 0
                          ? Colors.green.shade100
                          : Colors.orange[50],
                      child: ListTile(
                        autofocus: true,
                        leading: Text(
                          'ID: ${state.loadedUser[index].id}',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        title: Center(
                            child: Text(
                          'Login: ${state.loadedUser[index].login}',
                          style: const TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 22),
                        )),
                      ),
                    ),
                  ));
        }
        if (state is UserErrorState) {
          return const Center(
              child: Text(
            'Error fetching users',
            style: TextStyle(fontSize: 20),
          ));
        }
        return const SizedBox.shrink();
      },
    );
  }
}
