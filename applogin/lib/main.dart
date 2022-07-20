import 'package:applogin/sign/auth_controller.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:applogin/sign/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Берет данные пользователя с других страниц

  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

    return  GetMaterialApp(
            title: 'AppLogin',
            theme: ThemeData(),
            home: LoginPage()

    );
}}
