
import 'package:doctor/const/doctors_const.dart';
import 'package:doctor/widget/doctors_home_titletext.dart';
import 'package:doctor/widget/home_text_purple.dart';
import 'package:doctor/widget/text_large_detail.dart';
import 'package:flutter/material.dart';

class StackDesignCardIconText extends StatelessWidget {
  const StackDesignCardIconText({
    Key? key,
    required this.text,
    required this.texttwo,
    required this.image,
    this.color,
  }) : super(key: key);

  final String text;
  final String texttwo;
  final String image;
  final color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 5,
          color: DoctorsConst.colorLightgrey,
          shape: RoundedRectangleBorder(
              borderRadius: DoctorsConst.borderRadiusCircular20),
          child: SizedBox(
              height: MediaQuery.of(context).size.height / 4.7,
              width: MediaQuery.of(context).size.width / 2.3,
              child: Image.asset(image)),
        ),
        Positioned(
          top: 100,
          child: Container(
            height: MediaQuery.of(context).size.height / 10,
            width: MediaQuery.of(context).size.width / 2.2,
            decoration: BoxDecoration(
                color: Color.fromARGB(207, 246, 246, 246),
                borderRadius: BorderRadius.only(
                    topLeft: DoctorsConst.radius30,
                    topRight: DoctorsConst.radius30)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                children: [TextTitle(text: text), DoctorsConst.sizedBoxHeigt5, TextPurple(text: texttwo)],
              ),
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: 75,
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 10,
                decoration: BoxDecoration(
                    color: DoctorsConst.colorWhite,
                    borderRadius: DoctorsConst.borderRadiusCircular50),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.video_camera_back_rounded,
                      color: DoctorsConst.colorPurple,
                      size: 20,
                    )),
              ),
              DoctorsConst.sizedBoxWidht40,
              Container(
                height: MediaQuery.of(context).size.height / 20,
                width: MediaQuery.of(context).size.width / 10,
                decoration: BoxDecoration(
                    color: DoctorsConst.colorWhite,
                    borderRadius: DoctorsConst.borderRadiusCircular70),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment,
                      color: DoctorsConst.colorrRed,
                      size: 20,
                    )),
              ),
            ],
          ),
        )
      ],
    );
  }
}
