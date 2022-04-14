import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/view/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
            child: PageView(
          children: [
            HomePage(),
          ],
        )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: bgColor2,
            height: 68,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: mainColor,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Home",
                          style: textStyle4.copyWith(
                              color: mainColor,
                              fontSize: 14,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.notifications_active,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.donut_small_sharp,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                  ]),
            ),
          ),
        )
      ],
    );
  }
}
