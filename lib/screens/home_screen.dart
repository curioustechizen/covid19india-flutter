import 'package:covid19in/constants.dart';
import 'package:covid19in/widgets/charts/chart_widget.dart';
import 'package:covid19in/widgets/maps/map_widget.dart';
import 'package:covid19in/widgets/summary/summary_row.dart';
import 'package:covid19in/widgets/zoomable.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:presentation/presentation.dart';

class HomeScreen extends StatelessWidget {
  final _summaryViewModel = Injector.getInjector()
      .get<SummaryViewModel>(); //TODO: Inject this in constructor
  final _mapStateLevelViewModel = Injector.getInjector()
      .get<MapStateLevelViewModel>(); //TODO: Inject this in constructor
  final _chartViewModel = Injector.getInjector()
      .get<ChartsViewModel>(); //TODO: Inject this in constructor

  final PageController _pageController = PageController(viewportFraction: 0.85);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          StreamBuilder<SummaryState>(
              stream: _summaryViewModel.uiState.distinct(),
              //TODO: the distinct should move to ViewModel implementation
              builder: (context, snapshot) {
                return !snapshot.hasData
                    ? CircularProgressIndicator()
                    : SummaryRow(
                        selectedCategory: snapshot.data.selectedCategory,
                        summaryInfo: snapshot.data.summaryItems,
                        onCategorySelected: (Category category) {
                          //TODO: Combine these into one ViewModel
                          _summaryViewModel.dispatchAction(
                              SummaryAction.categoryTapped(category));
                          _mapStateLevelViewModel.dispatchAction(
                              StateLevelAction.selectCategory(category));
                          _chartViewModel.dispatchAction(
                              ChartsAction.selectCategory(category));
                        },
                      );
              }),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: PageView(
                scrollDirection: Axis.vertical,
                controller: _pageController,
                children: <Widget>[
                  StreamBuilder<StateLevelState>(
                      stream: _mapStateLevelViewModel.uiState.distinct(),
                      builder: (context, snapshot) {
                        return !snapshot.hasData
                            ? CircularProgressIndicator()
                            : Container(
                                height: MediaQuery.of(context).size.width *
                                    0.9 *
                                    kMapSvgHeight /
                                    kMapSvgWidth,
                                width: MediaQuery.of(context).size.width * 0.9,
                                child: ZoomableWidget(
                                  child: MapWidget(
                                    category: snapshot.data.selectedCategory,
                                    statistics: snapshot.data.stateLevelInfo,
                                    highlightedRegion:
                                        snapshot.data.highlightedRegion,
                                    onRegionHighlighted: (region) {
                                      _mapStateLevelViewModel.dispatchAction(
                                          StateLevelAction.highlightRegion(
                                              region));
                                    },
                                  ),
                                ));
                      }),
                  StreamBuilder<ChartsState>(
                      stream: _chartViewModel.uiState.distinct(),
                      builder: (context, snapshot) {
                        return !snapshot.hasData
                            ? CircularProgressIndicator()
                            : AnimatedContainer(
                                duration: kAnimationDurationMedium,
                                decoration: BoxDecoration(
                                    color: categoryColorsMap[
                                            snapshot.data.currentCategory]
                                        .withAlpha(16),
                                    borderRadius: BorderRadius.circular(4.0)),
                                child: Container(
                                    height: 160.0,
                                    width: 320.0,
                                    padding: EdgeInsets.all(8.0),
                                    child: PointsLineChart(
                                      chartPoints: snapshot.data.dataPoints
                                          .map((HistoricalDataPoint p) =>
                                              ChartPoint(
                                                  date: p.date, count: p.count))
                                          .toList(),
                                      category: snapshot.data.currentCategory,
                                    )),
                              );
                      })
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
