import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/src/controller/count_controller_with_getx.dart';
import 'package:getx_prac/src/controller/count_controller_with_provider.dart';
import 'package:getx_prac/src/pages/state/with_getx.dart';
import 'package:getx_prac/src/pages/state/with_provider.dart';
import 'package:provider/provider.dart';

class ReactiveStateManagePage extends StatelessWidget {
  const ReactiveStateManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetx());

    return Scaffold(
        appBar: AppBar(
          title: Text("단순상태관리"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "GetX",
                style: TextStyle(fontSize: 30),
              ),
              GetBuilder<CountControllerWithGetx>(
                id: "first",
                builder: (controller) {
                  return Text(
                    "${controller.count}",
                    style: TextStyle(fontSize: 50),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
