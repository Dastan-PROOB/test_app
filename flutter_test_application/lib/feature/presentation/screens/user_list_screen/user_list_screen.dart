
import 'package:flutter/material.dart';
import 'package:flutter_test_application/feature/model/user.dart';

import 'package:flutter_test_application/feature/presentation/screens/user_list_screen/widgets/action_buttons.dart';
import 'package:flutter_test_application/feature/presentation/screens/user_list_screen/widgets/user_list.dart';

class UserListScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.lime.shade800,
      ),
      body: Container(
        padding:
            const EdgeInsets.only(top: 30, bottom: 10, left: 10, right: 10),
        child: Column(
          children: <Widget>[
            ActionButtons(),
            SizedBox(height: 2,),
            SizedBox(height: 25),
            Expanded(child: UserListWidget()),
          ],
        ),
      ),
    );
  }
}
