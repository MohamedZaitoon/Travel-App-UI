import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/style/theme.dart';

import 'screens/home_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildTravelTheme(),
      home: Home(),
    );
  }
}
