import 'package:flutter/material.dart';
import 'package:flutter_test_application/feature/model/user.dart';

class UserDetailWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return  Column(
          children: [
            SizedBox(
              height: 24,
            ),
             Text(
              'asd',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              width: 100,
              height: 100,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.network(''),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Text('asd'),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Text('asd'),
            ),
          ],
        );
      }}