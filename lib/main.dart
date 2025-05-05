import 'package:flutter/material.dart';
import 'game_menu.dart'; // Este será nuestro nuevo menú

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mini Sports Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GameMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}
