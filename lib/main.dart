import 'package:covid19in/credits_screen.dart';
import 'package:covid19in/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import './ColorPalette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid19India',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          canvasColor: kCanvasColor,
          brightness: Brightness.light,
          primarySwatch:
              generateMaterialColor(Color(kActiveHex).withAlpha(0xFF)),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            headline1: GoogleFonts.overpass(
                fontSize: 100,
                fontWeight: FontWeight.w300,
                letterSpacing: -1.5),
            headline2: GoogleFonts.overpass(
                fontSize: 62, fontWeight: FontWeight.w300, letterSpacing: -0.5),
            headline3:
                GoogleFonts.overpass(fontSize: 50, fontWeight: FontWeight.w400),
            headline4: GoogleFonts.overpass(
                fontSize: 35, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            headline5:
                GoogleFonts.overpass(fontSize: 25, fontWeight: FontWeight.w400),
            headline6: GoogleFonts.overpass(
                fontSize: 21, fontWeight: FontWeight.w500, letterSpacing: 0.15),
            subtitle1: GoogleFonts.overpass(
                fontSize: 17, fontWeight: FontWeight.w400, letterSpacing: 0.15),
            subtitle2: GoogleFonts.overpass(
                fontSize: 15, fontWeight: FontWeight.w500, letterSpacing: 0.1),
            bodyText1: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
            bodyText2: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
            button: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
            caption: GoogleFonts.poppins(
                fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
            overline: GoogleFonts.poppins(
                fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
          )),
      home: Covid19IndiaApp(),
    );
  }
}

class Covid19IndiaApp extends StatefulWidget {
  @override
  _Covid19IndiaAppState createState() => _Covid19IndiaAppState();
}

enum CurrentScreen { homeScreen, creditsScreen }

class _Covid19IndiaAppState extends State<Covid19IndiaApp> {
  var _currentScreen = CurrentScreen.homeScreen;

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    var listItemStyle =
        themeData.textTheme.headline6;
    return Scaffold(
        drawer: Drawer(
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
                title: buildDrawerItem(listItemStyle, "Home", _currentScreen == CurrentScreen.homeScreen),
                onTap: () {
                  setState(() => _currentScreen = CurrentScreen.homeScreen);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: buildDrawerItem(listItemStyle, "Credits", _currentScreen == CurrentScreen.creditsScreen),
                onTap: () {
                  setState(() => _currentScreen = CurrentScreen.creditsScreen);
                  Navigator.pop(context);
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: themeData.primaryColorDark),
          centerTitle: true,
          title: Covid19Header(),
        ),
        body: _currentScreen == CurrentScreen.homeScreen
            ? HomeScreen()
            : CreditsScreen());
  }

  Text buildDrawerItem(TextStyle listItemStyle, String title, bool isSelected) {
    return Text(
                title,
                style: listItemStyle.copyWith(
                    color: isSelected ? kDrawerSelectedColor : kDrawerTextcolor,
                        backgroundColor: isSelected ? kDrawerSelectedColor.withAlpha(20)  : kCanvasColor
                ),

              );
  }
}

class Covid19Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return RichText(
      text: TextSpan(
          text: 'Covid19'.toUpperCase(),
          style: themeData.textTheme.headline5
              .copyWith(fontWeight: FontWeight.bold),
          children: <TextSpan>[
            TextSpan(
                text: 'India'.toUpperCase(),
                style: themeData.textTheme.headline5.copyWith(
                    color: themeData.primaryColorDark,
                    fontWeight: FontWeight.bold)),
          ]),
    );
  }
}
