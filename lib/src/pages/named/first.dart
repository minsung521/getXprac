import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/src/pages/normal/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("first page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    Get.toNamed("/second");
                  },
                  child: Text("다음페이지 이동  "))
            ],
          ),
        ));
  }
}
