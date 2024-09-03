import 'package:flutter/material.dart';
import 'package:sanberappflutter/user/model/user_model.dart';
import 'package:sanberappflutter/user/page/user_detail_page.dart';
import 'package:sanberappflutter/user/service/user_service.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  List<UserModel> users = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    users = await UserService().fetchUser();
    print('ini data user ${users.length}');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Page'),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailPage(user: users[index]),
                ),
              );
            },
            child: ListTile(
              title: Text('${users[index].firstName} ${users[index].lastName}'),
              leading: Image.network(users[index].avatar),
              subtitle: Text(users[index].email),
            ),
          ),
        ),
      ),
    );
  }
}
