import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: const NetworkImage(
                "https://cache.marieclaire.fr/data/photo/w1200_h630_c17/5v/apprendre-geographie-enfants.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 100),
                ),
                Text(
                    style: TextStyle(
                      fontSize: 50,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5
                        ..color = const Color.fromARGB(255, 0, 168, 22),
                    ),
                    'GÉO - QUIZZ'),
                const Padding(padding: EdgeInsets.only(bottom: 50)),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 67, 127, 255),
                    fontSize: 30.0,
                    fontFamily: 'popin',
                  ),
                  child: AnimatedTextKit(
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      TyperAnimatedText(
                        'COUNTRIES',
                        speed: const Duration(milliseconds: 100),
                      ),
                      TyperAnimatedText(
                        'CAPITALS',
                        speed: const Duration(milliseconds: 100),
                      ),
                      TyperAnimatedText(
                        'A TOI DE JOUER',
                        speed: const Duration(milliseconds: 100),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                side: const BorderSide(
                    color: Color.fromARGB(255, 0, 255, 200), width: 2),
              ),
              onPressed: () {
                Get.toNamed('/quiz');
              },
              child: const Text(
                'JOUER MAINTENANT !',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
          ],
        ),
      ),
    );
  }
}
