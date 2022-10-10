import 'package:doctor/view/doctors_appointment.dart';
import 'package:doctor/view/page_detail.dart';
import 'package:doctor/view/page_info_view.dart';
import 'package:doctor/view/page_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const InfoPage(),
    );
  }
}
