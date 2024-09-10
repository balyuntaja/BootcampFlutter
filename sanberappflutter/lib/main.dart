import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/counter/pages/counter_page.dart';
import 'package:sanberappflutter/pages/get_started_page.dart';
import 'package:sanberappflutter/pages/home/home_page.dart';
import 'package:sanberappflutter/pages/home/news_page.dart';
import 'package:sanberappflutter/routes/app_routes.dart';
import 'package:sanberappflutter/user/page/user_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
