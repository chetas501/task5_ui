import 'package:flutter/material.dart';
import 'package:travel_app/models/places.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/view/pages/detail_page.dart';
import 'package:travel_app/view/widgets/event_holder.dart';
import 'package:travel_app/view/widgets/place_holders.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'All',
      'Asia',
      'America',
      'Europe',
      'Africa',
      'Australia'
    ];
    return Scaffold(
      backgroundColor: bgColor,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30, right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("assets/user.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(width: 15),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Hello Babyyyyyy,',
                          style: textStyle2,
                        ),
                        Text(
                          'Good Evening',
                          style: textStyle4,
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 25, right: 25),
            child: Text(
              "Let's enjoy your\n vacation",
              style: textStyle1,
            ),
          ),
          Container(
            height: 29,
            margin: EdgeInsets.only(left: 30, top: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: titles.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Text(
                          titles[index],
                          style: textStyle3.copyWith(
                              color: (index == 0) ? mainColor : Colors.white),
                        ),
                        SizedBox(height: 3),
                        (index == 0)
                            ? Container(
                                height: 2,
                                width: 12,
                                color: mainColor,
                              )
                            : SizedBox(),
                      ],
                    ),
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.only(top: 16, left: 30, right: 30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Countries",
                    style: textStyle2,
                  ),
                  Text(
                    'See All',
                    style: textStyle3.copyWith(color: Colors.white),
                  )
                ]),
          ),
          Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: places.length,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => DetailPage())));
                      },
                      child: PlaceCard(
                        place: places[index],
                        index: index,
                      ),
                    );
                  })),
          Container(
            margin: EdgeInsets.only(top: 16, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ongoing Events",
                  style: textStyle2,
                ),
                Text(
                  "See All",
                  style: textStyle3.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
              height: 200,
              margin: EdgeInsets.only(left: 30, top: 20),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: events.length,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Event(
                        events: events[index],
                      ),
                    );
                  })),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
