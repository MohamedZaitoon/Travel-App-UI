import 'package:meta/meta.dart';

class Place {
  final String name;
  final String shortDescription;
  final int minCost;
  final int maxCost;
  final String imageUrl;

  const Place(
      {@required this.name,
      @required this.shortDescription,
      @required this.minCost,
      @required this.maxCost,
      @required this.imageUrl});
}
