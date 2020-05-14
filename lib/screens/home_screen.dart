import 'package:covid19in/constants.dart';
import 'package:covid19in/data/hardcoded_data.dart';
import 'package:covid19in/widgets/charts/chart_widget.dart';
import 'package:covid19in/widgets/maps/map_widget.dart';
import 'package:covid19in/widgets/summary/summary_row.dart';
import 'package:covid19in/widgets/zoomable.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Category _selectedCategory = Category.confirmed;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        SummaryRow(
          selectedCategory: _selectedCategory,
          onCategorySelected: (Category category) {
            setState(() {
              _selectedCategory = category;
            });
          },
        ),
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
                        style: Theme.of(context).textTheme.subtitle1.copyWith(
                            color: kRecovered, fontWeight: FontWeight.w600))
                  ]),
            )
          ],
        ),
        Container(
            height: kMapSvgHeight * 1.1,
            width: kMapSvgWidth * 1.1,
            child: ZoomableWidget(
              child: MapWidget(
                category: _selectedCategory,
                statistics: summaryStats,
              ),
            )),
        DecoratedBox(
          decoration: BoxDecoration(color: kConfirmed.withAlpha(32), borderRadius: BorderRadius.circular(4.0)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 160.0,
                width: 320.0,
                child: PointsLineChart(
                  historicalConfirmed.entries
                      .map((MapEntry<DateTime, int> e) =>
                          ChartPoint(date: e.key, count: e.value))
                      .toList(),
                  animate: true,
                )),
          ),
        )
      ],
    );
  }
}




