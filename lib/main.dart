import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_aula/controller/home_page.dart';
import 'package:provider_aula/controller/inc_controller.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => IncController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChangeNotifier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
