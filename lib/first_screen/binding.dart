import 'package:get/get.dart';

import 'logic.dart';

class FirstScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstScreenLogic());
  }
}
