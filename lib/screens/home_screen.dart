import 'package:covid19in/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SummaryCard(
          summaryColor: kConfirmed,
          data: SummaryData(title: "Confirmed", total: 67161, diff: 4296),
        ),
        SummaryCard(
          summaryColor: kActive,
          data: SummaryData(title: "Active", total: 43976, showDiff: false),
        ),
        SummaryCard(
          summaryColor: kRecovered,
          data: SummaryData(title: "Recovered", total: 20969, diff: 1668),
        ),
        SummaryCard(
          summaryColor: kDeceased,
          data: SummaryData(title: "Deceased", total: 2212, diff: 111),
        ),
      ],
    );
  }
}

class SummaryData {
  final String title;
  final int total;
  final int diff;
  final bool showDiff;

  SummaryData({this.title, this.total, this.diff, this.showDiff = true});
}

class SummaryCard extends StatelessWidget {
  final Color summaryColor;
  final SummaryData data;

  const SummaryCard({
    this.summaryColor,
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: "${data.title}\n\n",
          style: Theme.of(context)
              .textTheme
              .subtitle2
              .copyWith(color: summaryColor),
          children: <InlineSpan>[
            TextSpan(
                text: data.showDiff ? "[+${data.diff}]\n" : "\n",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: summaryColor)),
            TextSpan(
                text: "${data.total}",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: summaryColor)),
          ]),
    );
  }
}
