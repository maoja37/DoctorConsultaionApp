import 'package:doctor_consultation_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ScheduleCard extends StatelessWidget {
  var date;
  var color;

  ScheduleCard(this.date, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  color: color.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                        fontSize: 20),
                  ),
                  Text(
                    'Jan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: color,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              'Consultation',
              style: TextStyle(
                  color: kTitleTextColor, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Sunday - 9am - 11am',
              style: TextStyle(color: kTitleTextColor.withOpacity(0.7)),
            ),
          ),
        ),
      ),
    );
  }
}
