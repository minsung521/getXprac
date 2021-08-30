import 'package:flutter/material.dart';
import 'package:getx_prac/src/controller/count_controller_with_getx.dart';
import 'package:getx_prac/src/controller/count_controller_with_provider.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Provider",
            style: TextStyle(fontSize: 30),
          ),
          Text(
            "0",
            style: TextStyle(fontSize: 50),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                "+",
                style: TextStyle(fontSize: 30),
              ))
        ],
      ),
    );
  }
}
