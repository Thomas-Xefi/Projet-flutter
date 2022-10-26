import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.6), BlendMode.dstATop),
            image: NetworkImage(
                "https://cache.marieclaire.fr/data/photo/w1200_h630_c17/5v/apprendre-geographie-enfants.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(bottom: 100)),
                Container(
                  child: Text(
                      style: TextStyle(
                        fontSize: 50,
                        foreground: Paint()
                          ..style = PaintingStyle.stroke
                          ..strokeWidth = 5
                          ..color = Color.fromARGB(255, 0, 168, 22)!,
                      ),
                      'GÉO - QUIZZ'),
                ),
                Padding(padding: EdgeInsets.only(bottom: 50)),
                Container(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 67, 127, 255),
                      fontSize: 30.0,
                      fontFamily: 'popin',
                    ),
                    child: AnimatedTextKit(
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          TyperAnimatedText('COUNTRIES',
                              speed: Duration(milliseconds: 100)),
                          TyperAnimatedText('CAPITALS',
                              speed: Duration(milliseconds: 100)),
                          TyperAnimatedText(' FLAGS',
                              speed: Duration(milliseconds: 100)),
                        ]),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                primary: Color.fromARGB(255, 0, 255, 200),
                side: BorderSide(
                    color: Color.fromARGB(255, 0, 255, 200), width: 2),
              ),
              onPressed: () {
                Get.toNamed('/test');
              },
              child: const Text(
                'JOUER MAINTENANT !',
                style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
          ],
        ),
      ),
    );
  }
}
