import 'package:flutter/material.dart';
import 'package:sleep_story/models/item_model.dart';

import 'package:sleep_story/utils/constants.dart';

class CardItem extends StatelessWidget {
  const CardItem({Key? key, required this.item}) : super(key: key);
  final Item item;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: kPrimaryBlue, borderRadius: BorderRadius.circular(20)),
            child: Image.asset(
              item.icon,
              height: 100,
              width: 140,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            item.name,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
