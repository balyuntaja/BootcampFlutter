import 'package:flutter/material.dart';
import 'package:sanberappflutter/user/model/user_model.dart'; // Ensure UserModel is imported

class UserDetailPage extends StatelessWidget {
  final UserModel user;

  UserDetailPage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${user.firstName} ${user.lastName}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(user.avatar),
            SizedBox(height: 16.0),
            Text('Full Name: ${user.firstName} ${user.lastName}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 8.0),
            Text('ID: ${user.id}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8.0),
            Text('First Name: ${user.firstName}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8.0),
            Text('Last Name: ${user.lastName}', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8.0),
            Text('Email: ${user.email}', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
