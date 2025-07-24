import 'package:flutter/material.dart';
import 'package:flutter_zezen/app/widget/button/button_costum.dart';
import 'package:flutter_zezen/app/widget/sizedbox/sizedbox.dart';
import 'package:flutter_zezen/app/widget/textform/txtform.dart';

import 'package:get/get.dart';

import '../controllers/add_note_controller.dart';

class AddNoteView extends GetView<AddNoteController> {
  const AddNoteView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AddNoteView'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TxtForm(
              hintText: "title",
              onChange: (p0) {},
              controller: controller.titleC,
              onTap: () {},
            ),
            TxtForm(
              hintText: "desc",
              onChange: (p0) {},
              controller: controller.descC,
              onTap: () {},
            ),
            verticalSpace(20),
            Obx(() => ButtonCostum(
                title: controller.isLoading.isTrue ? "Loading" : "Add Note",
                onPressed: () {
                if(controller.isLoading.isFalse){
                  
                }
                },
                color: Colors.green))
          ],
        ));
  }
}
