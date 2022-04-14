import 'package:flutter/material.dart';
import 'package:travel_app/models/places.dart';
import 'package:travel_app/theme.dart';

class Event extends StatelessWidget {
  final Place events;
  const Event({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 230,
      padding: EdgeInsets.only(left: 20, top: 20),
      decoration: BoxDecoration(
          // color: mainCOlor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
              image: AssetImage(events.imageUrl), fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${events.event},',
            style: textStyle3.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            '${events.city}',
            style: textStyle3.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image(image: AssetImage('assets/map.png')),
              SizedBox(
                width: 6,
              ),
              Text(
                '${events.country}',
                style: textStyle3.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
