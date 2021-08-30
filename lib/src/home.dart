import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/src/pages/normal/first.dart';
import 'package:getx_prac/src/pages/simple_state_manage_page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("라우트 관리 홈"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    // Get.to(FirstPage());
                  },
                  child: Text("일반적인 라우트")),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    // Get.to(FirstPage());
                    Get.toNamed("/first");
                  },
                  child: Text("Named 라우트")),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    // Get.to(FirstPage());
                    Get.toNamed("/next",
                        arguments: User(
                          "민성",
                          17,
                        ));
                  },
                  child: Text("Arguments 전달")),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    // Get.to(FirstPage());
                    Get.toNamed("/user/23213/?name=김민성&age=17");
                  },
                  child: Text("동적 URL 전달")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(SimpleStateManagePage());
                  },
                  child: Text("단순상태관리"))
            ],
          ),
        ));
  }
}

class User {
  String name;
  int age;
  User(this.name, this.age);
}
