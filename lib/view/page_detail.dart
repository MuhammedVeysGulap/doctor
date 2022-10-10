import 'package:doctor/const/doctors_const.dart';
import 'package:doctor/view/page_home.dart';

import 'package:doctor/widget/text_large_detail.dart';
import 'package:flutter/material.dart';

class DoctorsDetail extends StatelessWidget {
  const DoctorsDetail({super.key});
  final double _iconsize = 30;
  final double _textsize = 25;
  final double _height = 1.3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: DoctorsConst.colorLightpurple,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
                child: _appBar(),
              ),
              Container(
                height: MediaQuery.of(context).size.height / _height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: DoctorsConst.colorWhite,
                  borderRadius: BorderRadius.only(
                    topRight: DoctorsConst.radius40,
                    topLeft: DoctorsConst.radius40,
                  ),
                ),
                child: Padding(
                  padding: DoctorsConst.paddingGeneral20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _rowImagesTextNameIcons(context),
                      DoctorsConst.sizedBoxHeigt20,
                      Container(
                        height: MediaQuery.of(context).size.height / 5,
                        decoration: BoxDecoration(
                            borderRadius: DoctorsConst.borderRadiusCircular20,
                            border: Border.all(
                                color: DoctorsConst.colorDarkpurple)),
                        child: Padding(
                          padding: DoctorsConst.paddingGeneral12,
                          child: Row(children: [
                            Column(
                              children: [
                                CircleAvatar(
                                    backgroundColor: DoctorsConst.colorLightgrey,
                                    child: Icon(
                                      Icons.account_circle_outlined,
                                      color: DoctorsConst.colorDarkgrey,
                                    )),
                                DoctorsConst.sizedBoxHeigt15,
                                Text(
                                  DoctorsConst.detailPatients,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                          fontSize: 13,
                                          color: DoctorsConst.colorGrey),
                                ),DoctorsConst.sizedBoxHeigt10,
                                TextLarge(text: DoctorsConst.detailLike, color: DoctorsConst.colorDarkgrey, fontSize: 20)
                              ],
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ]));
  }

  Row _rowImagesTextNameIcons(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 8,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
              borderRadius: DoctorsConst.borderRadiusCircular30,
              color: DoctorsConst.colorLightgrey),
          child: Image.asset(DoctorsConst.image_doctorwoman),
        ),
        DoctorsConst.sizedBoxWidht10,
        _textNameRowIcons(context)
      ],
    );
  }

  Column _textNameRowIcons(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextLarge(
            text: DoctorsConst.home_containertitle_one,
            color: DoctorsConst.colorBlack,
            fontSize: _textsize),
        DoctorsConst.sizedBoxHeigt10,
        Text(DoctorsConst.home_episode,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: DoctorsConst.colorPink, fontSize: 15)),
        DoctorsConst.sizedBoxHeigt20,
        _rowIcons()
      ],
    );
  }

  Row _rowIcons() {
    return Row(
      children: [
        CircleAvatar(
            backgroundColor: DoctorsConst.color_iconphone,
            child: Icon(
              Icons.phone_outlined,
              color: DoctorsConst.colorPurple,
            )),
        DoctorsConst.sizedBoxWidht20,
        CircleAvatar(
            backgroundColor: DoctorsConst.colorLightorange,
            child: Icon(
              Icons.video_camera_front_outlined,
              color: DoctorsConst.colorDarkpink,
            )),
        DoctorsConst.sizedBoxWidht20,
        CircleAvatar(
            backgroundColor: DoctorsConst.colorLightblue,
            child: Icon(
              Icons.message_outlined,
              color: DoctorsConst.colorDarkblue,
            ))
      ],
    );
  }

  Row _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_rounded,
          color: DoctorsConst.colorWhite,
          size: _iconsize,)),
        TextLarge(
            text: DoctorsConst.detail,
            color: DoctorsConst.colorWhite,
            fontSize: _textsize),
        Icon(
          Icons.menu,
          color: DoctorsConst.colorWhite,
          size: _iconsize,
        )
      ],
    );
  }
}
