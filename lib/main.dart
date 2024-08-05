import 'package:flutter/material.dart';
import 'package:testonline/ui/menu.dart' as menu_ui;
import 'package:testonline/ui/home.dart' as home_ui;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: menu_ui.MyMenu(),
      //home: home_ui.HomeWidget(),
    );
  }
}


