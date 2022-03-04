import 'package:calculator/app/data/data_models/key_model.dart';

class KeyProvider{
  KeyProvider._();
  static final instance = KeyProvider._();

  List<KeyModel> getAllKeys(){
    return [
      KeyModel(keyText: 'AC'),
      KeyModel(keyText: '9'),
      KeyModel(keyText: '8'),
      KeyModel(keyText: 'AC'),
      KeyModel(keyText: 'AC'),
      KeyModel(keyText: 'AC'),
      KeyModel(keyText: 'AC'),
      KeyModel(keyText: 'AC'),
      KeyModel(keyText: 'AC'),
    ];
  }
}