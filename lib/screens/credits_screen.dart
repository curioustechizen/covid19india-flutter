import 'package:covid19in/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CreditsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = themeData.textTheme;
    final linkTextStyle = textTheme.bodyText1.copyWith(
        color: themeData.primaryColor, decoration: TextDecoration.underline);
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        ListTile(title: Text("Credits", style: textTheme.headline4)),
        CreditsSection(
            data: CreditsData(
                title: "Covid 19 India Website",
                link: "https://www.covid19india.org/",
                bulletPoints: [
              "Inspiration",
              "Design",
              "Source code of the react web app",
              "Covid-19 data and API",
              "Maps of India and states (topojson format)"
            ])),
        CreditsSection(
            data: CreditsData(
                title: "covidstat.info website",
                link: "https://covidstat.info/graphql",
                bulletPoints: ["GraphQL endpoint for Covid19 India API"])),
      ],
    );
  }
}

class CreditsData {
  final String title, link;
  final List<String> bulletPoints;

  CreditsData(
      {@required this.title, @required this.link, @required this.bulletPoints});
}

class CreditsSection extends StatelessWidget {
  final CreditsData data;

  const CreditsSection({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;
    final linkTextStyle = textTheme.bodyText1.copyWith(
        color: themeData.primaryColor, decoration: TextDecoration.underline);
    return SingleChildScrollView(
      child: AnimationLimiter(
        child: Column(
          children: AnimationConfiguration.toStaggeredList(
            duration: const Duration(milliseconds: 550),
              childAnimationBuilder: (widget) => SlideAnimation(verticalOffset: 16.0, child: FadeInAnimation(child: widget,),), children: <Widget>[
            ListTile(
                title: Text(
              data.title,
              style: textTheme.headline5.copyWith(
                backgroundColor: kDrawerSelectedColor.withAlpha(20),
              ),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (data.link != null)
                    GestureDetector(
                        onTap: () {
                          _launchInBrowser(data.link);
                        },
                        child: Text(data.link, style: linkTextStyle)),
                  for (var point in data.bulletPoints) Text(point),
                ],
              ),
            )
          ],
        ),
        )
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false);
    } else {
      throw 'Could not launch $url';
    }
  }
}
