import 'package:flutter/material.dart';
import 'package:flutter_zezen/app/routes/app_pages.dart';
import 'package:flutter_zezen/app/widget/text/txt.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Package'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            ListTile(
              onTap: () {
                Get.toNamed(Routes.HIVE_DB);
              },
              title: Txt(text: 'Hive Database'),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            )
          ],
        ));
  }
}
