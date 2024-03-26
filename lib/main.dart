// ignore_for_file: unrelated_type_equality_checks
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:new_training_app/pages/home_page.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();
  //open a box
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: const HomePage(),
        theme: ThemeData(primarySwatch: Colors.yellow));
  }
}
