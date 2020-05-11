
import 'package:covid19in/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'covid_header.dart';

class AppDrawer extends StatelessWidget {

  final CurrentScreen currentScreen;
  final Function onDrawerItemSelected;

  const AppDrawer({this.currentScreen, this.onDrawerItemSelected});

  Text buildDrawerItem(TextStyle listItemStyle, String title, bool isSelected) {
    return Text(
      title,
      style: listItemStyle.copyWith(
          color: isSelected ? kDrawerSelectedColor : kDrawerTextcolor,
          backgroundColor: isSelected ? kDrawerSelectedColor.withAlpha(20)  : kCanvasColor
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    var listItemStyle =
        themeData.textTheme.headline6;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: themeData.primaryColorLight),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Covid19Header(),
              ],
            ),
          ),
          ListTile(
            title: buildDrawerItem(listItemStyle, "Home", currentScreen == CurrentScreen.homeScreen),
            onTap: () {
              onDrawerItemSelected(CurrentScreen.homeScreen);
            },
          ),
          ListTile(
            title: buildDrawerItem(listItemStyle, "Credits", currentScreen == CurrentScreen.creditsScreen),
            onTap: () {
              onDrawerItemSelected(CurrentScreen.creditsScreen);
            },
          ),
          ListTile(
            enabled: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Dark Mode",
                  style: themeData.textTheme.headline6
                      .copyWith(color: kDrawerTextcolor.withAlpha(127)),
                ),
                Switch(
                  value: false,
                  onChanged: (bool changed){},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}