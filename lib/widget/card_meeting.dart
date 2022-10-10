
import 'package:doctor/const/doctors_const.dart';
import 'package:doctor/widget/text_large_detail.dart';
import 'package:flutter/material.dart';

class CardMeeting extends StatelessWidget {
  const CardMeeting({super.key, required this.text, required this.image});

  final String text;
  final String image;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width,
        child: Card(
          color: DoctorsConst.colorLightgrey,
          shape: RoundedRectangleBorder(
              borderRadius: DoctorsConst.borderRadiusCircular20),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: DoctorsConst.borderRadiusCircular15),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    _rowImagesTextIconsStar(context),
                    DoctorsConst.sizedBoxHeigt15,
                    rowMoonTimesConfirmed(context),
                    DoctorsConst.sizedBoxHeigt15,
                    _elevatedButtonText(context)
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  Row _rowImagesTextIconsStar(BuildContext context) {
    return Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 14,
                        width: MediaQuery.of(context).size.width / 6.5,
                        decoration: BoxDecoration(
                            borderRadius: DoctorsConst.borderRadiusCircular15,
                            color: DoctorsConst.colorLightgrey),
                        child: Image.asset(image,),
                      ),
                      DoctorsConst.sizedBoxWidht10,
                      _columnNameStarIcon(context)
                    ],
                  );
  }

  Column _columnNameStarIcon(BuildContext context) {
    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextLarge(
                              text: text,
                              color: DoctorsConst.colorBlack,
                              fontSize: 17),
                          DoctorsConst.sizedBoxHeigt5,
                          Text(
                            DoctorsConst.home_episode_one,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: DoctorsConst.colorPink,
                                    fontSize: 13),
                          ),
                          DoctorsConst.sizedBoxHeigt10,
                          Row(
                            children: [
                              iconsStar(),
                              iconsStar(),
                              iconsStar(),
                              iconsStar(),
                              iconsStar(),
                              DoctorsConst.sizedBoxWidht10,
                              TextLarge(
                                  text: DoctorsConst.point,
                                  color: DoctorsConst.colorBlack,
                                  fontSize: 15)
                            ],
                          ),
                        ],
                      );
  }

  Row rowMoonTimesConfirmed(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _rowmoonIcon(context),
                      _rowTimes(context),
                      _rowConfirmed(context)
                    ],
                  );
  }

  Row _rowConfirmed(BuildContext context) {
    return Row(
                        children: [
                          Icon(
                            Icons.do_disturb_on_rounded,
                            color: DoctorsConst.colorGreen,
                            size: 18,
                          ),
                          Text(
                            DoctorsConst.confirmed,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: DoctorsConst.colorGrey,
                                    fontSize: 12),
                          )
                        ],
                      );
  }

  Row _rowTimes(BuildContext context) {
    return Row(
                        children: [
                          Icon(
                            Icons.access_time_sharp,
                            size: 18,
                            color: DoctorsConst.colorPink,
                          ),
                          DoctorsConst.sizedBoxWidht5,
                          Text(
                            DoctorsConst.times,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: DoctorsConst.colorPink,
                                    fontSize: 12),
                          ),
                        ],
                      );
  }

  Row _rowmoonIcon(BuildContext context) {
    return Row(
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: DoctorsConst.colorGrey,
                            size: 18,
                          ),
                          DoctorsConst.sizedBoxWidht5,
                          Text(
                            DoctorsConst.number,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: DoctorsConst.colorGrey,
                                    fontSize: 12),
                          ),
                          DoctorsConst.sizedBoxWidht5,
                          Text(
                            DoctorsConst.numberone,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: DoctorsConst.colorGrey,
                                    fontSize: 12),
                          )
                        ],
                      );
  }
}

class iconsStar extends StatelessWidget {
  const iconsStar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.star, color: DoctorsConst.colorAmber, size: 13);
  }
}

Row _elevatedButtonText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _elevatedBottonCancel(context),
      _elevatedButtonReschedule(context)
    ],
  );
}

SizedBox _elevatedButtonReschedule(BuildContext context) {
  return SizedBox(
    height: MediaQuery.of(context).size.height / 18,
    width: MediaQuery.of(context).size.width / 3,
    child: ClipRRect(
      borderRadius: DoctorsConst.borderRadiusCircular10,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: DoctorsConst.colorLightpurple),
          onPressed: () {},
          child: Text(DoctorsConst.elevatedButtonTwo,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: DoctorsConst.colorWhite, fontSize: 18))),
    ),
  );
}

SizedBox _elevatedBottonCancel(BuildContext context) {
  return SizedBox(
      height: MediaQuery.of(context).size.height / 18,
      width: MediaQuery.of(context).size.width / 3,
      child: ClipRRect(
        borderRadius: DoctorsConst.borderRadiusCircular10,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: DoctorsConst.colorLightorange),
          onPressed: () {},
          child: Text(DoctorsConst.elevatedButtonOne,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: DoctorsConst.colorDarkpink, fontSize: 18)),
        ),
      ));
}
