
import 'package:doctor/const/doctors_const.dart';
import 'package:doctor/view/doctors_appointment.dart';
import 'package:doctor/view/page_detail.dart';
import 'package:doctor/view/page_home.dart';
import 'package:flutter/material.dart';

class NavigationBarLearn extends StatefulWidget {
  const NavigationBarLearn({super.key});

  @override
  State<NavigationBarLearn> createState() => _NavigationBarLearnState();
}

class _NavigationBarLearnState extends State<NavigationBarLearn> {
  int _selectedIndex = 0;
  List<Widget> _bottomList = [
    HomePage(),
    DoctorsDetail(),
    DoctorsAppointment(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: DoctorsConst.colorGrey,
          selectedItemColor: DoctorsConst.colorPurple,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.paste), label: ''),
          
          ]),
          body: _bottomList.elementAt(_selectedIndex),
    );
  }
}
