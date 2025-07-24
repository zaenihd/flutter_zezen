import 'package:flutter/material.dart';
import 'package:flutter_zezen/app/routes/app_pages.dart';
import 'package:flutter_zezen/app/widget/text/txt.dart';

import 'package:get/get.dart';

import '../controllers/hive_db_controller.dart';

class HiveDbView extends GetView<HiveDbController> {
  const HiveDbView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HiveDbView'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.toNamed(Routes.ADD_NOTE);
              },
              title: Txt(text: 'Note ${index + 1}'),
            );
          },
        ));
  }
}
