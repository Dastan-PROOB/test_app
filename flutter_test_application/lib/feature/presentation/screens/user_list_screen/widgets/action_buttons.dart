import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test_application/feature/presentation/bloc/get_users/user_bloc.dart';
import 'package:flutter_test_application/feature/presentation/bloc/get_users/user_event.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserBloc _userBloc= BlocProvider.of<UserBloc>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(
          height: 50,
          width: 150,
          child: ElevatedButton.icon(
            onPressed: () {
              _userBloc.add(UserLoadEvent());
            },
            icon: const Icon(Icons.download_for_offline_outlined,size: 30,),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 19,
                fontWeight: FontWeight.w700
              ),
            ),
            label: Text('Get users'),
          ),
        ),
        SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton.icon(
            onPressed: () {
              _userBloc.add(UserClearEvent());

            },
            label: Text('Delete'),
            icon: Icon(Icons.delete_forever,size: 30,),
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              textStyle: TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.w700
            ),
            ),
          ),
        ),
      ],
    );
  }
}
