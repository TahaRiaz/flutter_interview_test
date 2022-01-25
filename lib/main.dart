import 'package:flutter/material.dart';
import 'package:flutter_interview_test/first_screen/binding.dart';
import 'package:get/get.dart';

import 'first_screen/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/home',
      getPages: [
        GetPage(name: '/home', page: () => FirstScreenWidget(), binding: FirstScreenBinding())
      ],
    );
  }
}
