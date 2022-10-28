import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:monapp/data/models/question.dart';
import 'package:monapp/widgets/page_quiz_controller.dart';

class PageQuizView extends GetView<GetxPageQuizController> {
  const PageQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.obx(
        (state) => Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop),
              image: const NetworkImage(
                  "https://pixabay.com/get/g12c12bbeae47c7cdffe3c4225e60d3c9931943fbf5b48ee3b87ab68d6a2a7a56019100791e0a5028b08325af809130d8bf5ea356bb46858e5f1f91cd0f2ea69f451c5352dbe5b5a76473eb7c383beff4_1920.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  textAlign: TextAlign.center,
                  controller.currentQuestion.value.question,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Wrap(
                children: List.generate(
                  controller.currentQuestion.value.choices.length,
                  (choice) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        key: Key(
                            controller.currentQuestion.value.choices[choice]!),
                        onTap: () {
                          if (key == controller.currentQuestion.value.answer) {
                            controller.isCorrect = 'correct'.obs;
                          } else {
                            controller.isCorrect = 'incorrect'.obs;
                            print(controller.isCorrect);
                          }
                        },
                        child: Obx(
                          () => Card(
                            color: controller.isCorrect.value == 'correct'
                                ? Colors.lightGreenAccent
                                : controller.isCorrect.value == 'incorrect'
                                    ? Colors.redAccent
                                    : Colors.white,
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                            ),
                            child: SizedBox(
                              width: 320,
                              height: 60,
                              child: Center(
                                child: Text(
                                  controller
                                      .currentQuestion.value.choices[choice]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
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
