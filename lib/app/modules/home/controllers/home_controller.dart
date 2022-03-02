import 'package:calculator/app/modules/home/models/key_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  List<List<dynamic>> keys = [
    ["AC", "0xFFCE93D8"], ["⌫", "0xFFCE93D8"], ["%", "0xFFCE93D8"], ["÷", "0xFFCE93D8"],
    ["7", "0xFFCE93D8"], ["8", "0xFFCE93D8"], ["9", "0xFFCE93D8"], ["×", "0xFFCE93D8"],
    ["4", "0xFFCE93D8"], ["5", "0xFFCE93D8"], ["6", "0xFFCE93D8"], ["−", "0xFFCE93D8"],
    ["1", "0xFFCE93D8"], ["2","0xFFCE93D8"], ["3", "0xFFCE93D8"], ["+", "0xFFCE93D8"],
    [".", "0xFFCE93D8"], ["0", "0xFFCE93D8"], ["±", "0xFFCE93D8"], ["=", "0xFFCE93D8"],
  ];

  buildKey(int index) {
    return Key(keyText: keys[index][0], keyColor: keys[index][1]);
  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
