import 'package:flutter/material.dart';

class DoctorsConst {
  // Color
  static const colorWhite = Colors.white;
   static const colorGreen = Colors.green;
  static const colorBlack = Colors.black;
  static const colorGrey = Colors.grey;
  static const colorDarkgrey = Color.fromARGB(255, 81, 81, 81);
  static const colorBej = Color.fromARGB(255, 255, 255, 255);
  static const colorBlue = Colors.blue;
  static const colorAmber = Colors.amber;
  static const colorGreen100 = Color.fromARGB(255, 200, 230, 201);
  static const colorRed100 = Color.fromARGB(255, 229, 64, 64);
  static const colorPurple = Colors.purple;
  static const colorLightpurple = Color.fromARGB(255, 181, 98, 196);
  static const colorDarkpurple = Color.fromARGB(255, 103, 43, 113);
  static const colorPink = Color.fromARGB(255, 244, 123, 163);
  static const colorLightred = Color.fromARGB(255, 240, 89, 79);
  static const colorLightblue = Color.fromARGB(255, 162, 240, 234);
  static const colorrRed = Colors.red;
  static const colorLightgrey = Color.fromARGB(255, 232, 231, 231);
  static const colorLightpurpl_one = Color.fromARGB(255, 239, 211, 244);
  static const colorLightorange = Color.fromARGB(255, 255, 161, 178);
  static const colorDarkpink = Color.fromARGB(255, 159, 39, 79);
  static const color_iconphone = Color.fromARGB(255, 225, 167, 201);
  static const colorDarkblue = Color.fromARGB(255, 19, 85, 138);
  


     
  //SizedBox
  static const SizedBox sizedBoxHeigt5 = SizedBox(height: 5);
  static const SizedBox sizedBoxHeigt10 = SizedBox(height: 10);
  static const SizedBox sizedBoxHeigt15 = SizedBox(height: 15);
  static const SizedBox sizedBoxHeigt20 = SizedBox(height: 20);
  static const SizedBox sizedBoxHeigt30 = SizedBox(height: 30);
  static const SizedBox sizedBoxHeigt40 = SizedBox(height: 40);
  static const SizedBox sizedBoxHeigt50 = SizedBox(height: 50);
  static const SizedBox sizedBoxHeigt70 = SizedBox(height: 70);
  static const SizedBox sizedBoxHeigt85 = SizedBox(height: 85);

  static const SizedBox sizedBoxWidht10 = SizedBox(width: 10);
  static const SizedBox sizedBoxWidht20 = SizedBox(width: 20);
  static const SizedBox sizedBoxWidht5 = SizedBox(width: 5);
  static const SizedBox sizedBoxWidht40 = SizedBox(width: 40);

// FontSize
  

//Radius
  static const Radius radius10 = Radius.circular(10);
  static const Radius radius20 = Radius.circular(20);
  static const Radius radius30 = Radius.circular(30);
  static const Radius radius40 = Radius.circular(40);
  static const Radius radius60 = Radius.circular(60);
  static const Radius radius70 = Radius.circular(70);
  static const Radius radius140 = Radius.circular(140);

  //BorderRadius
  static BorderRadius borderRadiusCircular50 = BorderRadius.circular(50);
  static BorderRadius borderRadiusCircular10 = BorderRadius.circular(10);
  static BorderRadius borderRadiusCircular15 = BorderRadius.circular(15);
  static BorderRadius borderRadiusCircular20 = BorderRadius.circular(20);
  static BorderRadius borderRadiusCircular30 = BorderRadius.circular(30);
  static BorderRadius borderRadiusCircular40 = BorderRadius.circular(40);
  static BorderRadius borderRadiusCircular70 = BorderRadius.circular(70);
  static BorderRadius borderRadiusCircular180 = BorderRadius.circular(180);
   static const borderRadiusOnlyInfo = BorderRadius.only(bottomRight: Radius.circular(230),bottomLeft: Radius.circular(230)); 
  static BorderRadius borderRadius100 =  BorderRadius.circular(100);

  // Padding
  static const paddingGeneral20 = EdgeInsets.all(20);
  static const paddingGeneral12 = EdgeInsets.all(12);
  static const paddingGeneral10 = EdgeInsets.all(10);
  static const paddingGeneral8 = EdgeInsets.all(8);
  static const paddingGeneral4 = EdgeInsets.all(4);

  static const paddingGeneralOnlytop12 = EdgeInsets.only(left:12,right: 12,top: 20 );


  //image
    static const imageMaleDoctor ='assets/images/one.png';
          static const imageAfemaleDoctor ='assets/images/two.png';
          static const imageBfemaleDoctor ='assets/images/three.png';
          static const imageCfemaleDoctor ='assets/images/four.png';
  static const image_man = 'assets/images/doctor_man.png';
  static const image_woman = 'assets/images/doctor_womans.jpg';
  static const image_doctorman = 'assets/images/smiling-doctor.jpg';
  static const image_doctorwoman = 'assets/images/home_dctr.png';
  static const image_ambulance = 'assets/images/ambulance.png';
  static const image_stetoskop = 'assets/images/stethoscope.png';
  static const image_beher = 'assets/images/beher.png';
  static const image_testtube = 'assets/images/testtube.png';
  static const image_doctor = 'assets/images/doctor_woman.png';
  static const image_homecard = 'assets/images/man_doctor.png';
  
           static const iconAmbulance ='assets/images/ambulance.png';
           static const iconPill ='assets/images/pill.png';
           static const iconStethoscope ='assets/images/stethoscope.png';
           static const iconTesttube ='assets/images/testtube.png';

  //Text
  static const infoTitle ='Find a doctor near you';
  static const infoContext ='Lorem ipsum sit amet,consectetur \n adipiscing elit. Pretium eget laoreet tortor, ut\nid sagittis. ';
  static const consult = 'Consult';
  static const bottomSheetTitle = 'Register Eithe Us!';
  static const bottomSheetContext = 'Your information is safe with us';

  static const home_hi = 'Hi!';
  static const home_name = 'Jonathan Tawly';
  static const home_textfield = 'Search';
  static const home_healthy = 'Healthy or expensive';
  static const home_early = 'early prodection for family \n& friends health';
  static const home_button = 'Learn more';
  static const home_doctors = 'Doctors';
  static const home_labs = 'Labs';
  static const home_ambulance = 'Ambulance';
  static const home_pharms = 'Pharms';
  static const home_topdoctor = 'Top Rated Doctors';
  static const home_containertitle_one = 'Dr.Jerems Steve';
  static const home_containertitle_two = 'Dr. Seamle John';
  static const home_episode = 'Cardiologist';
  static const home_episode_one = 'Pediatrics';
  static const appointment = 'Appointment';
  static const number = '16';
  static const numberone = 'May, 2022';
  static const moon = 'Tuesday';
  static const upcoming = 'Upcoming';
  static const point = '4.9';
  static const times = '02:00AM';
  static const confirmed = 'Confirmed';
  static const elevatedButtonOne = 'Cancel';
  static const elevatedButtonTwo = 'Reschedule';
  static const detail = 'Doctor Details';
  static const detailPatients = 'Patients';
  static const detailLike = '1k+';
  static const detailexperience = 'Experience';
  static const detailYear = '5 Years+';
  static const detailPointText = 'Rating';
  static const detailPoint = '4.9';
 
  



}
