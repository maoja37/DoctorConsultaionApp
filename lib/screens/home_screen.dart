import 'package:doctor_consultation_app/components/category_card.dart';
import 'package:doctor_consultation_app/components/doctor_card.dart';
import 'package:doctor_consultation_app/components/search_bar.dart';
import 'package:doctor_consultation_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/menu.svg'),
                    SvgPicture.asset('assets/icons/profile.svg')
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired \nDoctor',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: kTitleTextColor),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildCategoryList(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _buildDoctorList()
            ],
          ),
        ),
      ),
    );
  }

  buildCategoryList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 30,
          ),
          CategoryCard(
            'assets/icons/dental_surgeon.png',
            'Dental\nSurgeon',
            kBlueColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'assets/icons/heart_surgeon.png',
            'Heart\nSurgeon',
            kYellowColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
            'assets/icons/eye_specialist.png',
            'Eye\nSpecialist',
            kOrangeColor,
          ),
          SizedBox(
            width: 10,
          ),
          CategoryCard(
              'assets/icons/dental_surgeon.png', 'Dental\nSurgeon', kBlueColor),
        ],
      ),
    );
  }

  _buildDoctorList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [
        DoctorCard(
          'assets/images/doctor1.png',
          'Dr. Stella Kane',
          'Heart Surgeon - Flower Hospitals',
          kBlueColor,
        ),
        SizedBox(
          height: 20,
        ),
        DoctorCard(
          'assets/images/doctor2.png',
          'Dr. Joseph Cart',
          'Dental Surgeon - Flower Hospitals',
          kYellowColor,
        ),
        SizedBox(
          height: 20,
        ),
        DoctorCard(
          'assets/images/doctor3.png',
          'Dr. Stephanie',
          'Eye Specialist - Flower Hospitals',
          kOrangeColor,
        ),
        SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
