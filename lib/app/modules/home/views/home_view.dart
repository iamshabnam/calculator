import 'package:calculator/app/ui/calc_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(() {
                    return Container(
                      child: Text(controller.query.value),
                    );
                  }),
                  Obx(() {
                    return Container(
                      child: Text(controller.result.value),
                    );
                  }),
                ],
              ), //TODO: display expression here
            ),
          ),
          Expanded(
            flex: 4,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: List.generate(controller.allKeys.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CalcButton(
                    color: Color(controller.allKeys[index].keyColor),
                    onPressed: () {
                      controller.query.value = controller.query.value + controller.allKeys[index].keyText;
                      // controller.result.value = math.eval(controller.query.value);
                    },
                    btnText: controller.allKeys[index].keyText,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
