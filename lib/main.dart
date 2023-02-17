import 'package:curso_basico_flutter/views/course_1_view.dart';
import 'package:curso_basico_flutter/views/course_2_view.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Course1View.routeName,
      routes: {
        Course1View.routeName: (context) => const Course1View(),
        Course2View.routeName: (context) => const Course2View(),
      },
    );
  }
}
