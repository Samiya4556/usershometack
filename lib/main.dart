import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hometasck/repository/user_repository.dart';
import 'package:hometasck/view/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  UserRepository().registerAdapter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage());
  }
}
