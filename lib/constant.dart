import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Map currencyMap = {
  'USD 🇺🇸': 3.5,
  'NIS 🇵🇸': 1,
  'JOR 🇯🇴': 5,
  'EGY 🇪🇬': 0.2,
};

Map lengthMap = {
  'cm': 0.01,
  'feet': 0.3048,
  'yard': 0.9144,
  'm': 1,
  'inch': 39.37,
  'km': 1000,
  'mel': 1609.344,
};
Map weightMap = {
  'mili gram': 0.001,
  'gram': 1,
  'oz': 28.3495,
  'kg': 1000,
  'ton': 1000 * 1000,
  'pound': 453.59237,
};

Map timeMap = {
  'sec': 1,
  'min': 60,
  'hour': 60 * 60,
  'day': 24 * 60 * 60,
  'week': 7 * 24 * 60 * 60,
  'month': 30 * 7 * 24 * 60 * 60,
  'year': 12 * 30 * 7 * 24 * 60 * 60,
};

Map siPrefixesMap = {
  'nano': 0.000000001,
  'micro': 0.000001,
  'mili': 0.001,
  'unit': 1,
  'kilo': 1000,
  'mega': 1000 * 1000,
  'giga': 1000 * 1000 * 1000,

};

Color mainColor =Colors.teal;

List<BottomNavigationBarItem> bottomNavigationBarItem = [
  BottomNavigationBarItem(
    icon: Icon(
      FontAwesomeIcons.rulerVertical,
      color: mainColor,
    ),
    title: Text(
      'Length',
      style: TextStyle(
        color:mainColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.fitness_center,
      color: mainColor,
    ),
    title: Text(
      'weight',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.access_time,
      color: mainColor,
    ),
    title: Text(
      'time',
      style: TextStyle(
        color:mainColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.public,
      color: mainColor,
    ),
    title: Text(
      'siPrefixes',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
  BottomNavigationBarItem(
    icon: Icon(
      Icons.account_balance,
      color: mainColor,
    ),
    title: Text(
      'currency',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
];

List<BottomNavyBarItem> itemsBottomNavyBar=[
  BottomNavyBarItem(

    icon: Icon(
      FontAwesomeIcons.rulerVertical,
      color: mainColor,
    ),
    title: Text(
      'Length',
      style: TextStyle(
        color:mainColor,
      ),
    ),
  ),
  BottomNavyBarItem(
    icon: Icon(
      Icons.fitness_center,
      color: mainColor,
    ),
    title: Text(
      'weight',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
  BottomNavyBarItem(
    icon: Icon(
      Icons.access_time,
      color: mainColor,
    ),
    title: Text(
      'time',
      style: TextStyle(
        color:mainColor,
      ),
    ),
  ),
  BottomNavyBarItem(
    icon: Icon(
      Icons.public,
      color: mainColor,
    ),
    title: Text(
      'siPrefixes',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
  BottomNavyBarItem(
    icon: Icon(
      Icons.account_balance,
      color: mainColor,
    ),
    title: Text(
      'currency',
      style: TextStyle(
        color: mainColor,
      ),
    ),
  ),
];





List<TabItem> items = [
TabItem(
icon: Icon(
FontAwesomeIcons.rulerVertical,
color: mainColor,
),
title:
'Length',

),
TabItem(
icon: Icon(
Icons.fitness_center,
color: mainColor,
),
title:
'weight',

),
TabItem(
icon: Icon(
Icons.access_time,
color: mainColor,
),
title:
'time',

),
TabItem(
icon: Icon(
Icons.public,
color: mainColor,
),
title:
'siPrefixes',

),
TabItem(
icon: Icon(
Icons.account_balance,
color: mainColor,
),
title: 'currency',

),
] ;

BoxDecoration boxDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(
    color: mainColor,
    width: 1,
  ),
  borderRadius: BorderRadius.all(
    Radius.circular(30),
  ),
);

TextStyle textStyleUp =TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: Color(0xFF16a085)
);

TextStyle numStyleUp =TextStyle(
    fontSize: 20,
    color: mainColor
);




Color colorBack = Colors.white ;
Color colorNum = mainColor ;

