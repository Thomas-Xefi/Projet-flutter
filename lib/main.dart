import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monapp/ui/view/page_quiz_view.dart';
import 'package:monapp/widgets/academy_page.dart';
import 'package:monapp/widgets/page_quiz_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      getPages: [
        GetPage(
          name: '/quiz/page',
          page: () => const PageQuizView(),
          binding: PageQuizBindings(),
        ),
      ],
      initialRoute: '/quiz/page',
    );
  }
}
