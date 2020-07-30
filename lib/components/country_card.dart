import 'package:flutter/material.dart';
import 'package:travel_app/model/country.dart';
import 'package:travel_app/screens/country_places_screen.dart';

class CountryCard extends StatelessWidget {
  final Country _country;

  const CountryCard({Key key, Country country})
      : this._country = country,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrSize = MediaQuery.of(context).size;
    final scrWidth = scrSize.width;
    final cardHeight = (scrSize.height - AppBar().preferredSize.height) * .59;
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.symmetric(
          vertical: cardHeight * .06, horizontal: scrWidth * .05),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(scrWidth * .03)),
      child: Stack(
        children: <Widget>[
          Image.asset(
            _country.imageUrl,
            fit: BoxFit.cover,
            height: cardHeight,
            width: double.infinity,
          ),
          Positioned(
            bottom: cardHeight * .10,
            left: (scrWidth - scrWidth * .05 * 2) * .25,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  _country.name,
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: cardHeight * .02,
                ),
                Text(
                  _country.phrase,
                ),
                SizedBox(
                  height: cardHeight * .1,
                ),
                ButtonTheme(
                  minWidth: scrWidth / 2.5,
                  height: cardHeight * 0.17,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => PlacesScreen(
                            countryName: _country.name,
                            countryImage: _country.imageUrl,
                          ),
                        ),
                      );
                    },
                    child: Text("Explore Now"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
