import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_prac/src/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
          ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithGetx>().increase();
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
