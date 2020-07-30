import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bar_button.dart';
import 'package:travel_app/components/touristic_place.dart';
import 'package:travel_app/components/tranding_card.dart';

import '../dumy_data.dart';

class PlacesScreen extends StatelessWidget {
  final String countryName;
  final String countryImage;

  const PlacesScreen({Key key, this.countryName, this.countryImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final appBarHeight = AppBar().preferredSize.height;
    final scrSize = MediaQuery.of(context).size;
    final bodyHeight = scrSize.height - appBarHeight;

    return _fullBackgroundImage(
      context,
      child: Scaffold(
        appBar: _buildAppbar(context,
            theme: theme, appBarHeight: appBarHeight, scrSize: scrSize),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: scrSize.width * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: bodyHeight * .04,
              ),
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text("Trending Attractions",
                    style: theme.textTheme.headline6),
                trailing: IconButton(
                    icon: Icon(
                      Icons.more_vert,
                      color: theme.primaryIconTheme.color,
                    ),
                    onPressed: () {}),
              ),
              TrendingCard(place: PLACES[countryName][0]),
              SizedBox(
                height: bodyHeight * .04,
              ),
              Text(
                "Weekly Heighlights",
                style: theme.textTheme.headline6,
              ),
              SizedBox(
                height: bodyHeight * .02,
              ),
              TouristicPlaces(
                bodyHeight: bodyHeight,
                countryName: countryName,
                scrSize: scrSize,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _fullBackgroundImage(BuildContext context, {Widget child}) {
    final scrSize = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Container(
          height: scrSize.height,
          width: scrSize.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(countryImage),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 3),
            child: Container(
              color: Colors.black.withOpacity(.1),
            ),
          ),
        ),
        child,
      ],
    );
  }

  Widget _buildAppbar(BuildContext context,
      {ThemeData theme, double appBarHeight, Size scrSize}) {
    return AppBar(
      elevation: 0.0,
      leading: appBarButton(
        Icon(Icons.arrow_back_ios),
        theme.primaryColor,
        appBarHeight,
        onTap: () {
          print("back");
          Navigator.of(context).pop();
        },
      ),
      title: Center(child: Text(countryName ?? '')),
      actions: <Widget>[
        SizedBox(
          width: appBarHeight * 1.1,
          child: appBarButton(
            Icon(Icons.bookmark_border),
            theme.accentColor.withOpacity(.1),
            appBarHeight,
          ),
        ),
        SizedBox(
          width: scrSize.width * .02,
        ),
      ],
    );
  }
}
