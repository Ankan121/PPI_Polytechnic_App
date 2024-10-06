import 'package:get/get.dart';
import 'package:ppi/controller/homeController.dart';

class ControllerBin extends Bindings{
  @override
  void dependencies() {
    Get.put<HomeContrller>(HomeContrller());
  }
}