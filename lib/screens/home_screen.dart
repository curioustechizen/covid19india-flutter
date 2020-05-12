import 'package:covid19in/constants.dart';
import 'package:covid19in/widgets/maps/map_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(

      padding: EdgeInsets.all(16.0),

        children: <Widget>[
          SummaryRow(),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(color: kConfirmed, fontWeight: FontWeight.bold),
              ),
              RichText(
                textAlign: TextAlign.end,
                text: TextSpan(
                    text: "Last updated\n",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText2
                        .copyWith(color: kRecovered),
                    children: <InlineSpan>[
                      TextSpan(
                          text: "about 2 hours ago",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .copyWith(color: kRecovered, fontWeight: FontWeight.w600))
                    ]),
              )
            ],
          ),
          Container(
            height: 331.71,
              width: 320.0,
              child: MapWidget()
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

class SummaryRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
