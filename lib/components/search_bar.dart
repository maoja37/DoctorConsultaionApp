import 'package:doctor_consultation_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
              color: kSearchBackgroundColor,
              borderRadius: BorderRadius.circular(20)),
          child: TextField(
            decoration: InputDecoration(
                hintText: 'Search for anything', border: InputBorder.none),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: MaterialButton(
            onPressed: () {},
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 14,),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: SvgPicture.asset('assets/icons/search.svg',),
            color: kOrangeColor,
          ),
        ),
      ],
    );
  }
}
