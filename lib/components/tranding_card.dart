import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bar_button.dart';
import 'package:travel_app/model/place.dart';

class TrendingCard extends StatelessWidget {
  final Place place;

  const TrendingCard({Key key, this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBarHeight = AppBar().preferredSize.height;
    final scrSize = MediaQuery.of(context).size;
    final imageHeight = (scrSize.height - appBarHeight) * .35;
    return Card(
      clipBehavior: Clip.antiAlias,
      // margin: EdgeInsets.symmetric(horizontal: scrSize.width * .04),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(scrSize.width * .025)),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Image.asset(
            place.imageUrl,
            fit: BoxFit.cover,
            height: imageHeight,
            width: double.infinity,
          ),
          Positioned(
            bottom: imageHeight * .05,
            child: Container(
              height: imageHeight * .3,
              width: scrSize.width,
              child: Padding(
                padding: EdgeInsets.only(right: 0.07 * scrSize.width),
                child: ListTile(
                  title: Text(
                    place.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(color: Colors.white),
                  ),
                  subtitle: Text(place.shortDescription,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: Colors.white)),
                  trailing: appBarButton(
                      Icon(
                        Icons.chevron_right,
                        color: Theme.of(context).primaryColor,
                      ),
                      Colors.white,
                      appBarHeight * .6),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
