import 'package:flutter/material.dart';
import 'package:sleep_story/models/category_model.dart';
import 'package:sleep_story/utils/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.category}) : super(key: key);
  final Category category;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
                color: kPrimaryBlue, borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              category.icon,
              height: 40,
              width: 40,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            category.name,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
