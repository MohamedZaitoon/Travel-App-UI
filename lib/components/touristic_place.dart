import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bar_button.dart';
import 'package:travel_app/dumy_data.dart';

class TouristicPlaces extends StatelessWidget {
  const TouristicPlaces({
    Key key,
    @required this.bodyHeight,
    @required this.countryName,
    @required this.scrSize,
  }) : super(key: key);

  final double bodyHeight;
  final String countryName;
  final Size scrSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bodyHeight * .27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: PLACES[countryName].length - 1,
        itemBuilder: (ctx, i) => _placeCard(ctx, i + 1, bodyHeight * .27),
      ),
    );
  }

  Widget _placeCard(BuildContext context, int i, height) {
    final width = scrSize.width * .33;
    final place = PLACES[countryName][i];
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(scrSize.width * .02)),
      child: Stack(
        children: [
          Image.asset(
            place.imageUrl,
            fit: BoxFit.cover,
            height: height,
            width: width,
          ),
          Positioned(
            top: height * .05,
            right: width * .05,
            child: appBarButton(
              Icon(
                Icons.bookmark_border,
                color: Theme.of(context).primaryColor,
                size: height * .1,
              ),
              Colors.white,
              height * .15,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: width,
              child: ListTile(
                title: Text(place.name,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontSize: 12, color: Colors.white)),
                subtitle: Text(
                  "\$ ${place.minCost} - ${place.maxCost}",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
