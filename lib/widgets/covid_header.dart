import 'package:flutter/material.dart';
import 'package:domain/domain.dart';

class Covid19Header extends StatelessWidget {
  final appInfo = AppInfo();
  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return RichText(
      text: TextSpan(
          text: '${appInfo.appName}${appInfo.appYear}'.toUpperCase(),
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
