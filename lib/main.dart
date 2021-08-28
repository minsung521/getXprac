import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_prac/src/home.dart';
import 'package:getx_prac/src/pages/named/first.dart';
import 'package:getx_prac/src/pages/named/second.dart';
import 'package:getx_prac/src/pages/next.dart';
import 'package:getx_prac/src/pages/user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: Home(),
      getPages: [
        GetPage(
            name: "/", page: () => Home(), transition: Transition.cupertino),
        GetPage(
            name: "/first",
            page: () => FirstNamedPage(),
            transition: Transition.cupertino),
        GetPage(
            name: "/second",
            page: () => SecondNamedPage(),
            transition: Transition.cupertino),
        GetPage(
            name: "/next",
            page: () => NextPage(),
            transition: Transition.cupertino),
        GetPage(
            name: "/user/:uid",
            page: () => UserPage(),
            transition: Transition.cupertino)
      ],
    );
  }
}
