import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monapp/ui/view/home_page_view.dart';
import 'package:monapp/ui/view/quiz_view.dart';
import 'package:monapp/ui/view/score_page_view.dart';
import 'package:monapp/ui/widgets/quiz_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePageView(),
        ),
        GetPage(
          name: '/quiz/page',
          page: () => const PageQuizView(),
          binding: QuizBindings(),
        ),
        GetPage(
            name: '/score',
            page: () => const ScorePageView(),
            binding: QuizBindings()),
      ],
      initialRoute: ('/home'),
    );
  }
}
