import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/src/home.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Next page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${Get.parameters['uid']}"),
              Text("${Get.parameters['name']}님 안녕하세요"),
              Text("${Get.parameters['age']}살"),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    Get.back();
                  },
                  child: Text("뒤로 이동")),
            ],
          ),
        ));
  }
}
