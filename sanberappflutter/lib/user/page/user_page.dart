import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/user/controller/user_controller.dart';
import 'package:sanberappflutter/user/model/user_model.dart';
import 'package:sanberappflutter/user/page/user_detail_page.dart';
import 'package:sanberappflutter/user/service/user_service.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final UserController userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: Obx(() {
        if (userController.users.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: userController.users.length,
          itemBuilder: (context, index) {
            final user = userController.users[index];
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Get.to(() => UserDetailPage(user: user));
                },
                child: ListTile(
                  title: Text('${user.firstName} ${user.lastName}'),
                  leading: Image.network(user.avatar),
                  subtitle: Text(user.email),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
