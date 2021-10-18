import 'package:doctor_consultation_app/constant.dart';
import 'package:doctor_consultation_app/screens/schedule_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailScreen extends StatelessWidget {
 
 var _name;
 var _description;
 var _imageUrl;

 DetailScreen(this._imageUrl,this._name,this._description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/detail_illustration.png'),
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 36,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: (){ Navigator.pop(context);},
                      child: SvgPicture.asset(
                        'assets/icons/back.svg',
                        height: 18,
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/3dots.svg',
                      height: 18,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.24,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(_imageUrl, height: 120),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _name,
                                style: TextStyle(
                                    color: kTitleTextColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                _description,
                                style: TextStyle(
                                  color: kTitleTextColor.withOpacity(0.7),
                                  fontSize: 12.9,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsetsDirectional.only(end: 16),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: kBlueColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: SvgPicture.asset(
                                        'assets/icons/phone.svg'),
                                  ),
                                  Container(
                                    margin: EdgeInsetsDirectional.only(end: 16),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: kYellowColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: SvgPicture.asset(
                                        'assets/icons/chat.svg'),
                                  ),
                                  Container(
                                    margin: EdgeInsetsDirectional.only(end: 10),
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        color: kOrangeColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: SvgPicture.asset(
                                        'assets/icons/video.svg'),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'About Doctor',
                        style: TextStyle(
                            color: kTitleTextColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Dr. Stella is the top most heart surgeon in Flower\nHospital. She has done over 100 successful sugeries\nwithin past 3 years. She has achieved several\nawards for her wonderful contribution in her own\nfield. She\'s available for private consultation for\ngiven schedules. ',
                        style: TextStyle(
                          color: kTitleTextColor.withOpacity(0.7),
                          height: 1.6,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Upcoming Schedules', style: TextStyle(color: kTitleTextColor, fontWeight: FontWeight.bold, fontSize: 18),),
                      SizedBox(height: 20),
                      ScheduleCard('12',kBlueColor),
                       ScheduleCard('13',kYellowColor),
                        ScheduleCard('14',kOrangeColor)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
