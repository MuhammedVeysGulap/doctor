

import 'package:doctor/const/doctors_const.dart';
import 'package:doctor/widget/column_mini_container.dart';
import 'package:doctor/widget/stack_designcard.dart';
import 'package:doctor/widget/text_large_detail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _DoctorsHomeState();
}

class _DoctorsHomeState extends State<HomePage> {
  final double _height = 3.7;
  final double _height78 = 78;
  final double _width78 = 78;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: DoctorsConst.paddingGeneral8,
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _containerTextSearchIcons(context),
                    DoctorsConst.sizedBoxHeigt10,
                    _containerTextImage(context),
                    DoctorsConst.sizedBoxHeigt10,
                    _rowMiniContainerText(),
                    DoctorsConst.sizedBoxHeigt10,
                    _textDoctors(context),
                    DoctorsConst.sizedBoxHeigt10,
                    _rowCardImageText(),
                  ]),
            )));
  }

  Row _rowCardImageText() {
    return Row(
      children:const  [
        StackDesignCardIconText(
            text: DoctorsConst.home_containertitle_one,
            texttwo: DoctorsConst.home_episode,
            image: DoctorsConst.image_doctor),
        DoctorsConst.sizedBoxWidht10,
        StackDesignCardIconText(
            text: DoctorsConst.home_containertitle_two,
            texttwo: DoctorsConst.home_episode_one,
            image: DoctorsConst.image_homecard)
      ],
    );
  }

  Text _textDoctors(BuildContext context) {
    return Text(DoctorsConst.home_topdoctor,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: DoctorsConst.colorDarkpurple));
  }

  Row _rowMiniContainerText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children:const[
      MiniContainer(text: DoctorsConst.home_doctors, image: DoctorsConst.iconStethoscope,color: DoctorsConst.colorPurple,),     
      MiniContainer(text: DoctorsConst.home_labs, image: DoctorsConst.iconTesttube,color: DoctorsConst.colorPink,),
      MiniContainer(text: DoctorsConst.home_ambulance, image: DoctorsConst.iconAmbulance,color: DoctorsConst.colorrRed,),
      MiniContainer(text: DoctorsConst.home_pharms, image: DoctorsConst.iconPill,color: DoctorsConst.colorBlue,),

      ],
    );
  }

  Container _containerTextSearchIcons(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / _height,
        decoration: BoxDecoration(
            color: DoctorsConst.colorLightpurple,
            borderRadius: DoctorsConst.borderRadiusCircular40),
        child: Padding(
          padding: DoctorsConst.paddingGeneral8,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  DoctorsConst.sizedBoxWidht10,
                  Container(
                    height: _height78,
                    width: _width78,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 3, color: DoctorsConst.colorBlue),
                        color: DoctorsConst.colorGrey),
                    child: Padding(
                      padding: DoctorsConst.paddingGeneral4,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(DoctorsConst.image_doctorman,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  DoctorsConst.sizedBoxWidht5,
                  _textColumnHiName(context),
                ]),
                CircleAvatar(
                    backgroundColor: DoctorsConst.colorWhite,
                    child: Icon(
                      Icons.notifications_none_sharp,
                      color: DoctorsConst.colorLightpurple,
                      size: 35,
                    ))
              ],
            ),
            DoctorsConst.sizedBoxHeigt10,
            _rowTextField(context),
          ]),
        ));
  }

  Padding _containerTextImage(BuildContext context) {
    return Padding(
      padding: DoctorsConst.paddingGeneral10,
      child: Container(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              DoctorsConst.colorDarkpurple,
              DoctorsConst.colorPink
            ]),
            borderRadius: DoctorsConst.borderRadiusCircular40),
        child: Padding(
          padding: DoctorsConst.paddingGeneral12,
          child: Row(children: [
            _columnElevatedbuttonText(context),
            Image.asset(
              DoctorsConst.image_doctorwoman,
            )
          ]),
        ),
      ),
    );
  }

  Column _columnElevatedbuttonText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextLarge(
            text: DoctorsConst.home_healthy,
            color: DoctorsConst.colorWhite,
            fontSize: 20),
        DoctorsConst.sizedBoxHeigt10,
        Text(DoctorsConst.home_early,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 17,
                  color: DoctorsConst.colorWhite,
                )),
        DoctorsConst.sizedBoxHeigt10,
        ElevatedButton(
          onPressed: () {},
          child: Text(DoctorsConst.home_button,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: DoctorsConst.colorWhite)),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: DoctorsConst.borderRadiusCircular20)),
        )
      ],
    );
  }

  Row _rowTextField(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 8,
          child: TextField(
            decoration: InputDecoration(
              fillColor: DoctorsConst.colorWhite,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(DoctorsConst.radius20),borderSide: BorderSide.none),
              prefixIcon: Icon(Icons.search),
              hintText: DoctorsConst.home_textfield,
            ),
          ),
        ),
        DoctorsConst.sizedBoxWidht10,
        Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: DoctorsConst.colorWhite,
                  borderRadius: DoctorsConst.borderRadiusCircular10),
              height: MediaQuery.of(context).size.height / 18,
              child: const Icon(Icons.manage_search_rounded,
                  color: DoctorsConst.colorLightpurple),
            ))
      ],
    );
  }

  Column _textColumnHiName(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          DoctorsConst.home_hi,
          style: Theme.of(context).textTheme.headline6?.copyWith(
              color: DoctorsConst.colorWhite, fontWeight: FontWeight.normal),
        ),
        DoctorsConst.sizedBoxHeigt10,
        Text(DoctorsConst.home_name,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                color: DoctorsConst.colorWhite, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
