import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class DetailIcon extends StatelessWidget {
  final String image;
  final String text1;
  const DetailIcon({Key? key, required this.image, required this.text1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Image.asset(image),
          ),
        ),
        SizedBox(width: 8),
        Text(
          text1,
          style: textStyle3.copyWith(color: Colors.white),
        )
      ],
    );
  }
}
