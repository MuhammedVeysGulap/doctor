
import 'dart:ui';

import 'package:doctor/const/doctors_const.dart';
import 'package:flutter/material.dart';


class MiniContainer extends StatelessWidget {
  const MiniContainer({super.key, this.color, required this.text, required this.image});
final String text;
final color;
final double _width = 6.5;
final double _height = 14;
final double _fontsize15 = 15;
final double _fontsize50 = 50;
final String image;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
                    Container(
                        width: MediaQuery.of(context).size.width / _width,
                        height: MediaQuery.of(context).size.height / _height,
                        decoration: BoxDecoration(
                            borderRadius: DoctorsConst.borderRadiusCircular10,
                            color: color,),
                        child: ClipRRect(
                          borderRadius: DoctorsConst.borderRadiusCircular10,
                          child: Image.asset(image)
                        )),DoctorsConst.sizedBoxHeigt5,Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: _fontsize15),
                  )
                  ]);
  }
}