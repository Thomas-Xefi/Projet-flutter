import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:monapp/widgets/page_quiz_controller.dart';

class PageQuizView extends GetView<GetxPageQuizController> {
  const PageQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Container(
          child: Column(
            children: [
              Column(
                children: List.generate(
                  controller.listCountry.length,
                  (country) {
                    return Text(
                      "Nom du pays : ${controller.listCountry[country].name} Capital : ${controller.listCountry[country].capital ?? 'Pas de capital'}",
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
