
import 'package:doctor/const/doctors_const.dart';
import 'package:flutter/material.dart';

class TextPurple extends StatelessWidget {
  const TextPurple({super.key, required this.text});

  final String text;
  

  @override
  Widget build(BuildContext context) {
    return Text(
        text,
        style: Theme.of(context).textTheme.headline5?.copyWith(
            color: DoctorsConst.colorrRed, fontWeight: FontWeight.bold,fontSize: 12,),
      );
  }
}