import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/src/home.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

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
              Text("${Get.arguments.name} : ${Get.arguments.age}"),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    Get.back();
                  },
                  child: Text("뒤로 이동  ")),
            ],
          ),
        ));
  }
}
