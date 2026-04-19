import 'package:flutter/material.dart';

Widget buildInfoRow(IconData icon, String text){
  return ListTile(
    leading: Icon(icon),
    title: Text(text),
  );
}