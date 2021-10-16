import 'package:doctor_consultation_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
    final imageUrl;
    final cardDetail;
    final color;

  CategoryCard(this.imageUrl,this.cardDetail, this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 160,
      child: Stack(children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            width: 120,
            height: 137,
            padding: EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                cardDetail,
                style: TextStyle(
                  color: kTitleTextColor,
                ),
              ),
            ),
          ),
        ),
        Positioned(
            right: 0,
            child: Container(
              height: 84,
              width: 84,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(imageUrl),
            ),)
      ]),
    );
  }
}
