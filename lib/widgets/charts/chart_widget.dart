/// Line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:covid19in/constants.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class PointsLineChart extends StatelessWidget {
  final List<ChartPoint> chartPoints;
  final Category category;
  final Color baseColor;

  PointsLineChart({@required this.chartPoints, @required this.category}): this.baseColor = categoryColorsMap[category];

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(_initChartSeries(),
        animate: true,
        domainAxis: new charts.EndPointsTimeAxisSpec(),
        defaultRenderer: new charts.LineRendererConfig(
            includePoints: true,
            roundEndCaps: true,
            strokeWidthPx: 4,
        )
    );
  }

  List<charts.Series<ChartPoint, DateTime>> _initChartSeries() {
    return [
      charts.Series<ChartPoint, DateTime>(
          id: category.toString(),
          data: chartPoints,
          domainFn: (ChartPoint pt, _) => pt.date,
          measureFn: (ChartPoint pt, _) => pt.count,
          colorFn: (_, __) => charts.Color(
              r: baseColor.red, g: baseColor.green, b: baseColor.blue))
    ];
  }
}

class ChartPoint {
  final DateTime date;
  final int count;

  ChartPoint({this.date, this.count});
}
