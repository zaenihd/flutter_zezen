import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNoteController extends GetxController {
  //TODO: Implement AddNoteController

  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();
  RxBool isLoading = false.obs;

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
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
