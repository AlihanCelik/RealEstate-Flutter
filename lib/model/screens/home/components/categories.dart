import 'package:flutter/material.dart';
import 'package:my_app/constants/constants.dart';
import 'package:my_app/data/data.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selectedCategoryIndex = 0;

  get index => null;

  Widget _buildCategory(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      child: Padding(
        padding: EdgeInsets.only(
            left: index == 0 ? appPadding / 2 : 0,
            right: appPadding / 3),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: appPadding / 2),
          decoration: BoxDecoration(
            color: selectedCategoryIndex == index
                ? darkBlue
                : black.withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),),
          child: Center(
            child: Text(
              categoryList[index], style: TextStyle(
                fontWeight: FontWeight.bold,
                color: selectedCategoryIndex == index ? white : black
            ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return Padding(
      padding: EdgeInsets.only(
        top: appPadding / 2,
        bottom: appPadding,
      ),
      child: Container(
        height: size.height * 0.05,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            return _buildCategory(context, index);
          },
        ),
      ),
    );
  }
}
