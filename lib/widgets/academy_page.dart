// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AcademyPage extends StatelessWidget {
  const AcademyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://cache.marieclaire.fr/data/photo/w1200_h630_c17/5v/apprendre-geographie-enfants.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(bottom: 100)),
            Text(
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightGreenAccent,
                  fontStyle: FontStyle.italic,
                ),
                'GEOQUIZZ'),
            Padding(padding: EdgeInsets.only(bottom: 300)),
            Container(
              decoration: BoxDecoration(),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  primary: Colors.white,
                  side: BorderSide(
                      color: Colors.lightGreenAccent, width: 2), //<-- SEE HERE
                ),
                onPressed: () {},
                child: const Text(
                  'JOUER MAINTENANT !',
                  style: TextStyle(fontSize: 40, fontStyle: FontStyle.italic),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
