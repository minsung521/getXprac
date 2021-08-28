import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/src/home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("second page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    Get.back();
                  },
                  child: Text("뒤로 이동  ")),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (_) => FirstPage()));
                    // Get.to(Home());
                    Get.offAllNamed("/");
                    // Navigator.of(context).pushAndRemoveUntil(
                    //     MaterialPageRoute(builder: (_) => Home()),
                    //     (route) => false);
                  },
                  child: Text("홈 이동"))
            ],
          ),
        ));
  }
}
