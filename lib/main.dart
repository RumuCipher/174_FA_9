import 'package:digital_id_card_app/pages/id_card_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(IdCardApp());
}

class IdCardApp extends StatelessWidget {
  const IdCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IdCardPage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
      ),
    );
  }
}