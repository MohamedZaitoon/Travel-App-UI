import 'package:travel_app/model/country.dart';
import 'package:travel_app/model/place.dart';

const COUNTRIES = [
  Country(
    name: "Japan",
    phrase: "Explore the land of the rising sun",
    imageUrl: "assets/images/countries/japan.jpg",
  ),
  Country(
    name: "Japan",
    phrase: "Explore the land of the rising sun",
    imageUrl: "assets/images/countries/japan.jpg",
  ),
];

const PLACES = {
  "Japan": [
    Place(
      name: "Kyoto Tour",
      shortDescription: "Three days tour around Kyoto",
      minCost: 50,
      maxCost: 200,
      imageUrl: "assets/images/places/japan-tour.jpg",
    ),
    Place(
      name: "Takashi Castle",
      shortDescription: "Visit the greet Takashi Castle",
      minCost: 200,
      maxCost: 400,
      imageUrl: "assets/images/places/castle.jpg",
    ),
    Place(
      name: "Heaven's Gate",
      shortDescription: "Impressive Place",
      minCost: 50,
      maxCost: 150,
      imageUrl: "assets/images/places/heavens-gate.jpg",
    ),
    Place(
      name: "Sagano Bamboo Forest",
      shortDescription:
          "Beautiful bamboo forest situated in Arashiyama is the second-most popular tourist district in Kyoto",
      minCost: 100,
      maxCost: 300,
      imageUrl: "assets/images/places/Sagano-Bamboo-Forest.jpg",
    ),
  ],
};
