import 'package:calculator/app/data/data_models/key_model.dart';
import 'package:calculator/app/data/data_providers/key_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<KeyModel> allKeys = KeyProvider.instance.getAllKeys();

  final query = ''.obs;

  // ///boilerplate code for above
  // Rx<String> query1 = Rx<String>('');
  // ///null thing for above
  // Rxn<String> query2 = Rxn<String>();
  // ///query3 is same as query2
  // Rx<String?> query3 = Rx<String?>(null);


  final result = ''.obs;


  @override
  void onInit() {
    ever(query, (val){
      // result.value = math.eval(query.value);
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
