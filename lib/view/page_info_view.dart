import 'package:doctor/const/doctors_const.dart';
import 'package:doctor/view/page_home.dart';
import 'package:doctor/widget/doctors_home_titletext.dart';
import 'package:doctor/widget/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';


class InfoPage extends StatelessWidget {
  const InfoPage({super.key});
  final double _heightContainer = 1.8;
  final String _name = 'Enter Your Full Name';
  final String _mail = 'Enter Your Email';
  final String _password = 'Enter Your Password';
  final String _confirmpassword = 'Confirm Your Pasword';

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: DoctorsConst.colorWhite,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _containerWidth(context),
          DoctorsConst.sizedBoxHeigt15,
          TextTitle(text: DoctorsConst.infoTitle),
          DoctorsConst.sizedBoxHeigt15,
          textcontextGrey(text: DoctorsConst.infoContext,),
          DoctorsConst.sizedBoxHeigt15,
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: DoctorsConst.colorWhite,
              borderRadius: DoctorsConst.borderRadius100,
              border: Border.all(width: 1,color: DoctorsConst.colorPurple)
            ),
            child: IconButton(onPressed: (){
              _showModalBotomSheet(context);
            }, icon: Icon(Icons.arrow_right_alt_sharp,color: DoctorsConst.colorPurple,)),
          )
        ],
      ),
    );
  }

  Future<dynamic> _showModalBotomSheet(BuildContext context) {
    return showModalBottomSheet( backgroundColor: DoctorsConst.colorWhite,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
              context: context,
              builder: (context) => Center(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                          color:DoctorsConst.colorWhite,
                          border: Border.all(width: 4),
                         
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15,left: 15,right: 15),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.add_location_sharp,color: DoctorsConst.colorPink,size: 50,),
                                  SizedBox(width: 10,),
                                  Text(DoctorsConst.consult, style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: DoctorsConst.colorPurple, fontWeight: FontWeight.w600),)
                                ],
                              ),
                              SizedBox(height: 10,),
                               Text(
                    DoctorsConst.bottomSheetTitle,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: DoctorsConst.colorBlack, fontWeight: FontWeight.w600),
                  ),
                              SizedBox(height: 10,),
                              Text(DoctorsConst.bottomSheetContext,
                    style: Theme.of(context).textTheme.overline?.copyWith(
                          color: DoctorsConst.colorDarkgrey,
                          fontWeight: FontWeight.w600,
                        ),
                   ),
                              SizedBox(height: 10,),
                               TextField(
                                  maxLength: 10,
                                  cursorColor: Colors.black,
                                  decoration: 
                                  
                                  InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                                    
                                    ),
                                    label: Text(_name),
                                    
                                     ),  
                                     keyboardType: TextInputType.emailAddress,
                                     
                                  ),
                                 
                                  TextField(
                                  maxLength: 10,
                                  cursorColor: Colors.black,
                                  decoration: 
                                  InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                                    ),
                                    label: Text(_mail),
                                   
                                     ),  
                                     keyboardType: TextInputType.emailAddress,
                                     
                                  ),
                                   TextField(
                                  maxLength: 10,
                                  cursorColor: Colors.black,
                                  decoration: 
                                  InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                                    ),
                                    label: Text(_password),
                                   
                                     ),  
                                     keyboardType: TextInputType.visiblePassword,
                                     obscureText: true,
                                    
                                  ),
                                   TextField(
                                  maxLength: 10,
                                  cursorColor: Colors.black,
                                  decoration: 
                                  InputDecoration(
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                                    ),
                                    label: Text(_confirmpassword),
                                    
                                     ),  
                                     keyboardType: TextInputType.visiblePassword,
                                     obscureText: true,
                                    
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  ClipRRect(borderRadius: DoctorsConst.borderRadius100,
                                    child: SizedBox(
                                      height: MediaQuery.of(context).size.height/20,
                                      width: MediaQuery.of(context).size.height/3,
                                      child: ElevatedButton(onPressed: (){ Navigator.of(context).pushReplacement(MaterialPageRoute(
                                                          builder: (context) => NavigationBarLearn(),
                                                        ));}, child: Text('Start')),
                                    ),
                                  ),
                                 DoctorsConst.sizedBoxHeigt20,
                                  Row(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Sign Up',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: DoctorsConst.colorPurple),),
                                      DoctorsConst.sizedBoxWidht20,
                                      Text('User Agreement',style: Theme.of(context).textTheme.bodyText1?.copyWith(color: DoctorsConst.colorPink),)
                                    ],
                                  )
                
                            ],
                          ),
                        ),
                      ),
                    )
                
                  ],),
                ),
              ));
  }

  Container _containerWidth(BuildContext context) {
    return Container(
          height: MediaQuery.of(context).size.height / _heightContainer,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: DoctorsConst.colorPurple,
              borderRadius: DoctorsConst.borderRadiusOnlyInfo),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: DoctorsConst.colorBlue,
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(color: DoctorsConst.colorrRed, width: 5)),
                  child: ClipRRect(
                      borderRadius: DoctorsConst.borderRadius100,
                      child: Image.asset(
                        DoctorsConst.imageMaleDoctor,
                        fit: BoxFit.cover,
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      decoration: BoxDecoration(
                          color: DoctorsConst.colorPink,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: DoctorsConst.colorAmber, width: 5)),
                      child: ClipRRect(
                          borderRadius: DoctorsConst.borderRadius100,
                          child: Image.asset(
                            DoctorsConst.imageBfemaleDoctor,
                            fit: BoxFit.cover,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        );
  }
}

class textcontextGrey extends StatelessWidget {
  const textcontextGrey({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
     text,
      style: Theme.of(context).textTheme.caption?.copyWith(
          color: DoctorsConst.colorGrey, fontWeight: FontWeight.w600),
      textAlign: TextAlign.center,
    );
  }
}
