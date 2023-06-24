import 'package:flutter/material.dart';

class DashBoardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashBoardCategoriesModel(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashBoardCategoriesModel> list = [
    DashBoardCategoriesModel("Js", "Java Script", "10 Lessons", null),
        DashBoardCategoriesModel("FL", "Flutter ", "11 Lessons", null),
    DashBoardCategoriesModel("KT", "Kotlin ", "12 Lessons", null),
    DashBoardCategoriesModel("PY", "Py", " Lessons", null),

  ];
}
