import 'package:travel_app/model/country.dart';
import 'package:travel_app/model/place.dart';

const COUNTRIES = [
  Country(
    name: "Japan",
    phrase: "Explore the land of the rising sun",
    imageUrl: "assets/images/countries/japan.jpg",
  ),
  Country(
    name: "Canada",
    phrase: "Explore the vast forestes of Canada",
    imageUrl: "assets/images/countries/canada.jpg",
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
    Place(
      name: "Fields Of Shibazakura",
      shortDescription:
          "The Fuji Shibazakura Festival’s invitations are over 800,000 stalks of pink",
      minCost: 50,
      maxCost: 150,
      imageUrl: "assets/images/places/Fields-Of-Shibazakura.jpg",
    ),
    Place(
      name: "Natadera Temple In Winter",
      shortDescription:
          "Natadera temple comes alive in winter. Founded in 717 by a Buddhist monk the temple is over 1300 years old now",
      minCost: 100,
      maxCost: 300,
      imageUrl: "assets/images/places/Natadera-Temple-In-Winter.jpg",
    ),
  ],
  "Canada": [
    Place(
      name: "Grouse Mountain",
      shortDescription:
          "The first people to climb Grouse Mountain, just 15 minutes outside of Vancouver",
      minCost: 50,
      maxCost: 150,
      imageUrl: "assets/images/places/grouse_mountain.jpg",
    ),
    Place(
      name: "Dr. Sun Yat-Sen Garden",
      shortDescription:
          "Vancouver’s Chinatown is home to the first Ming Dynasty-styled garden built outside of China",
      minCost: 100,
      maxCost: 300,
      imageUrl: "assets/images/places/dr_sun_yat_sen_garden.jpg",
    ),
    Place(
      name: "Museum of Anthropology at UBC",
      shortDescription:
          "The Museum of Anthropology at the University of British Columbia " +
              "is a must-see for anyone who wants to learn more about native peoples of the world",
      minCost: 50,
      maxCost: 150,
      imageUrl: "assets/images/places/museum_of_anthropology_at_ubc.jpg",
    ),
    Place(
      name: "Stanley Park",
      shortDescription:
          "Stanley Park is a treasure set on almost 1,000 acres in central Vancouver",
      minCost: 100,
      maxCost: 300,
      imageUrl: "assets/images/places/stanley_park.jpg",
    ),
    Place(
      name: "Moraine Lake",
      shortDescription: "One of the most photographed places in western Canada",
      minCost: 200,
      maxCost: 250,
      imageUrl: "assets/images/places/moraine_lake.jpg",
    ),
  ]
};
