import 'package:doctor_consultation_app/constant.dart';
import 'package:doctor_consultation_app/screens/detail_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final leading;
  final title;
  final subtitle;
  final bColor;

  DoctorCard(this.leading, this.title, this.subtitle , this.bColor);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailScreen()));},
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: bColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 10,top: 10,bottom: 10),
          child: ListTile(
            leading: Image.asset(leading),
            title: Text(title, style: TextStyle(color: kTitleTextColor,fontWeight: FontWeight.bold),),
            subtitle: Text(subtitle, style: TextStyle(color: kTitleTextColor.withOpacity(0.7), ),),
          ),
        ),
      ),
    );
  }
}
 