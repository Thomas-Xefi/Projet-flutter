import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ScorePageView extends GetView {
  const ScorePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.8), BlendMode.dstATop),
            image: NetworkImage(
                "data:image/jpeg;base64,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"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Text('Voici ta note: */10',
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
  }
}