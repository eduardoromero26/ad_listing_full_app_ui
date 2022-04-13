import 'package:flutter/material.dart';
import 'package:project_name/screens/EditAdd.dart';
import 'package:project_name/screens/MyAds.dart';
import 'package:project_name/screens/Settings.dart';
import 'package:project_name/screens/editProfile.dart';
//import 'package:project_name/screens/AddNewMusic.dart';
//import 'package:project_name/screens/MyMusic.dart';
import 'package:project_name/screens/home.dart';
//import 'package:project_name/screens/login.dart';
import 'package:get/get.dart';
import 'package:project_name/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: EditAddScreen(),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       
    );
  }
}
