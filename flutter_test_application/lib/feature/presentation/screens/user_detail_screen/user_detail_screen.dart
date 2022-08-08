import 'package:flutter/material.dart';
import 'package:flutter_test_application/feature/model/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User asd;

  const UserDetailScreen({Key? key, required this.asd}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Character'),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Container(
        width: width,
        height: height,
        color: Colors.black87,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 24,
              ),
              Text(
                asd.login,
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
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 6),
                          color: Color(0xFFF7F9FF).withOpacity(0.15),
                          spreadRadius: 10,
                          blurRadius: 10)
                    ]),
                child: Image.network(
                  asd.avatar_url,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
