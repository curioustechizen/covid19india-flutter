/// Line chart example
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:covid19in/constants.dart';
import 'package:flutter/material.dart';

class PointsLineChart extends StatelessWidget {
  final List<ChartPoint> chartPoints;
  final bool animate;

  PointsLineChart(this.chartPoints, {this.animate});

  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(_initChartSeries(),
        animate: animate,
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
          id: 'Confirmed',
          data: chartPoints,
          domainFn: (ChartPoint pt, _) => pt.date,
          measureFn: (ChartPoint pt, _) => pt.count,
          colorFn: (_, __) => charts.Color(
              r: kConfirmed.red, g: kConfirmed.green, b: kConfirmed.blue))
    ];
  }
}

class ChartPoint {
  final DateTime date;
  final int count;

  ChartPoint({this.date, this.count});
}
