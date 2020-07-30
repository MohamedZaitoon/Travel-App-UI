import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bar_button.dart';
import 'package:travel_app/components/country_card.dart';
import 'package:travel_app/dumy_data.dart';

import '../style/colors.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scrWidth = MediaQuery.of(context).size.width;
    final appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      backgroundColor: BLACK,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: appBarButton(
          Icon(Icons.filter_list),
          Theme.of(context).primaryColor,
          appBarHeight,
        ),
        title: Center(
          child: Text(
            "HOME",
            textAlign: TextAlign.center,
          ),
        ),
        actions: <Widget>[
          SizedBox(
            width: appBarHeight * 1.1,
            child: appBarButton(
              Icon(Icons.bookmark_border),
              Color(0x09EAEAEA),
              appBarHeight,
            ),
          ),
          SizedBox(
            width: scrWidth * .02,
          ),
        ],
      ),
      body: _buildListView(context),
      bottomNavigationBar: _buildBottomNavBar(context),
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: COUNTRIES.length,
      itemBuilder: (ctx, i) => CountryCard(country: COUNTRIES[i]),
    );
  }

  Widget _buildBottomNavBar(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).primaryColor,
      elevation: 0.0,
      unselectedItemColor: Colors.grey,
      backgroundColor: BLACK,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("Home"),
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text("Search"),
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.camera_alt),
          title: Text("Camera"),
          backgroundColor: Colors.transparent,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          title: Text("Profile"),
          backgroundColor: Colors.transparent,
        ),
      ],
    );
  }
}
