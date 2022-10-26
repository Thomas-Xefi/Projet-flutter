import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monapp/widgets/home_page_view.dart';
import 'package:monapp/widgets/second_page.dart';

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
          name: '/test',
          page: () => const SecondPage(),
        ),
      ],
      initialRoute: ('/home'),
    );
  }
}
