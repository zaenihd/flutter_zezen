import 'package:get/get.dart';

import '../controllers/hive_db_controller.dart';

class HiveDbBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HiveDbController>(
      () => HiveDbController(),
    );
  }
}
