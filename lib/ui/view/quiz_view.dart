import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monapp/ui/widgets/quiz_controller.dart';

class PageQuizView extends GetView<GetxQuizController> {
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
              image: const AssetImage("assets/fond-quiz.jpg"),
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
                child: Obx(
                  () => Text(
                    textAlign: TextAlign.center,
                    controller.currentQuestion.value.question,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
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
                        onTap: () {
                          controller.changeStatus(
                            controller.currentQuestion.value.choices[choice],
                            controller.currentQuestion.value.answer,
                          );
                          controller.incrementScore();
                        },
                        child: Obx(
                          () => Card(
                            color: (controller.isCorrect.value == 'correct' &&
                                    controller.currentQuestion.value
                                            .choices[choice] ==
                                        controller.currentQuestion.value.answer)
                                ? Colors.lightGreenAccent
                                : (controller.isCorrect.value == 'incorrect' &&
                                        controller.currentQuestion.value
                                                .choices[choice] ==
                                            controller
                                                .currentQuestion.value.answer)
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
              const SizedBox(
                height: 80,
              ),
              Obx(
                () => ((controller.isCorrect.value != '')
                    ? ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                        ),
                        onPressed: (() {
                          controller.changePage();
                        }),
                        child: SizedBox(
                          width: 150,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              (controller.index < 9)
                                  ? const Text('Question suivante')
                                  : const Text('Voir votre résultat'),
                              const Spacer(),
                              const Icon(Icons.arrow_forward_rounded),
                            ],
                          ),
                        ),
                      )
                    : Container()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
