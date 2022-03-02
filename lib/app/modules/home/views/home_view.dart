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
                  Container(child: Text("9+7"),),
                  Container(child: Text("16"),),
                ],
              ),   //TODO: display expression here
            ),
          ),
          Expanded(
            flex: 4,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: [
                ...List.generate(controller.keys.length, (index) {return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _myWidget(index),
                );}),
              ],
            ),
          ),
        ],
      ),
    );
  }
  ElevatedButton _myWidget(int index) {
    return ElevatedButton(
    // style: ButtonStyle(
    //   backgroundColor: MaterialStateProperty.all<Color>(Color(controller.keys[index][1])), //wants int, passing string
    // ),
    onPressed: () {}, child: Text(controller.keys[index][0])); // replace * with your rupee or use Icon instead
  }
}
