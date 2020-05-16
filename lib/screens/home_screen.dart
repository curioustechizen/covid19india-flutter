import 'package:covid19in/constants.dart';
import 'package:covid19in/data/hardcoded_data.dart';
import 'package:covid19in/widgets/charts/chart_widget.dart';
import 'package:covid19in/widgets/maps/map_widget.dart';
import 'package:covid19in/widgets/summary/summary_row.dart';
import 'package:covid19in/widgets/zoomable.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:presentation/presentation.dart';

class HomeScreen extends StatelessWidget {
  final _summaryViewModel = Injector.getInjector().get<SummaryViewModel>(); //TODO: Inject this in constructor

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<SummaryState>(
      stream: _summaryViewModel.uiState,
      builder: (context, snapshot) {
        print('snapshot.hasData = ${snapshot.hasData}');
        if(snapshot.hasData) print(snapshot.data.summaryItems[Category.confirmed].total);
        return
          !snapshot.hasData ? CircularProgressIndicator() :
          ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            SummaryRow(
              selectedCategory: snapshot.data.selectedCategory,
              summaryInfo: snapshot.data.summaryItems,
              onCategorySelected: (Category category) => _summaryViewModel.dispatchAction(CategoryTappedAction(category)),
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
                    category: snapshot.data.selectedCategory,
                    statistics: summaryStats,
                  ),
                )),
//            DecoratedBox(
//              decoration: BoxDecoration(color: kConfirmed.withAlpha(32), borderRadius: BorderRadius.circular(4.0)),
//              child: Padding(
//                padding: const EdgeInsets.all(8.0),
//                child: Container(
//                    height: 160.0,
//                    width: 320.0,
//                    child: PointsLineChart(
//                      historicalConfirmed.entries
//                          .map((MapEntry<DateTime, int> e) =>
//                              ChartPoint(date: e.key, count: e.value))
//                          .toList(),
//                      animate: true,
//                    )),
//              ),
//            )
          ],
        );
      }
    );
  }
}




