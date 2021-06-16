import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:sleep_story/data/category_data.dart';
import 'package:sleep_story/data/item_data.dart';
import 'package:sleep_story/pages/home/components/card_item.dart';
import 'package:sleep_story/pages/home/components/category_item.dart';
import 'package:sleep_story/pages/home/components/frames_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/bg_home_border.svg',
          width: Get.width,
          height: Get.height,
          alignment: AlignmentDirectional.topStart,
        ),
        SvgPicture.asset(
          'assets/bg_moon_home.svg',
          width: Get.width,
          height: Get.height,
          alignment: AlignmentDirectional.topStart,
        ),
        SafeArea(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Sleep Stories",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Soothing bedtime stories to help you fall \n into a deep and natural sleep",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  height: 90,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) => CategoryItem(
                      category: categories[index],
                    ),
                  ),
                ),
                FramesCard(),
                SizedBox(
                  height: 130,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listItems.length,
                    itemBuilder: (context, index) =>
                        CardItem(item: listItems[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
