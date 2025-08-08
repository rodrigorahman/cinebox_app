import 'package:flutter/material.dart';

class HomeBottomNavBarItem extends BottomNavigationBarItem {
  HomeBottomNavBarItem({
    required String label,
    required String activeAsset,
    required String inactiveAsset,
    double iconWidth = 18,
    double iconHeigth = 18,
    double marginTop = 20,
  }) : super(
         icon: Container(
           margin: EdgeInsets.only(top: marginTop, bottom: 5),
           child: Image.asset(
             inactiveAsset,
             width: iconWidth,
             height: iconHeigth,
           ),
         ),
         activeIcon: Container(
           margin: EdgeInsets.only(top: marginTop, bottom: 5),
           child: Image.asset(
             activeAsset,
             width: iconWidth,
             height: iconHeigth,
           ),
         ),
         label: label,
       );
}
