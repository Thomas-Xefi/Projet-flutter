import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monapp/ui/widgets/quiz_controller.dart';

class ScorePageView extends GetView<GetxQuizController> {
  const ScorePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
            image: const AssetImage("assets/score-img.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Voici ta note: ${controller.score}/10",
                style: const TextStyle(
                  fontSize: 30,
                  fontStyle: FontStyle.italic,
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: (() {
                  Get.offAllNamed("/home");
                }),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: const SizedBox(
                  width: 150,
                  height: 40,
                  child: Center(
                    child: Text(
                      "Retour menu",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
