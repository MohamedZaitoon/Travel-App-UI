import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bar_button.dart';
import 'package:travel_app/components/country_card.dart';
import 'package:travel_app/dumy_data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final scrWidth = MediaQuery.of(context).size.width;
    final appBarHeight = AppBar().preferredSize.height;
    return Scaffold(
      appBar: _buildAppBar(theme, appBarHeight, scrWidth),
      body: _buildListView(context),
      bottomNavigationBar: _buildBottomNavBar(context, theme),
    );
  }

  Widget _buildAppBar(ThemeData theme, double appBarHeight, double scrWidth) {
    return AppBar(
      elevation: 0.0,
      leading: appBarButton(
        Icon(Icons.filter_list),
        theme.primaryColor,
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
            theme.accentColor.withOpacity(.1),
            appBarHeight,
          ),
        ),
        SizedBox(
          width: scrWidth * .02,
        ),
      ],
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      itemCount: COUNTRIES.length,
      itemBuilder: (ctx, i) => CountryCard(country: COUNTRIES[i]),
    );
  }

  Widget _buildBottomNavBar(BuildContext context, ThemeData theme) {
    return BottomNavigationBar(
      selectedItemColor: theme.primaryColor,
      elevation: 0.0,
      unselectedItemColor: Colors.grey,
      backgroundColor: theme.bottomAppBarColor,
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
