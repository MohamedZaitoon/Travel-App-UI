import 'package:flutter/material.dart';

Widget appBarButton(Widget icon, Color color, double appBarHeight,
    {Function onTap}) {
  return Container(
    height: appBarHeight,
    width: appBarHeight,
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(appBarHeight * .10)),
    margin: EdgeInsets.all(appBarHeight * .20),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(appBarHeight * .10),
      child: icon,
    ),
  );
}
