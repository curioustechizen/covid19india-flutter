import 'package:covid19in/constants.dart';
import 'package:covid19in/widgets/maps/map_widget.dart';
import 'package:covid19in/widgets/summary/summary_row.dart';
import 'package:covid19in/widgets/zoomable.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:presentation/presentation.dart';

class HomeScreen extends StatelessWidget {
  final _summaryViewModel = Injector.getInjector().get<SummaryViewModel>(); //TODO: Inject this in constructor
  final _mapStateLevelViewModel = Injector.getInjector().get<MapStateLevelViewModel>(); //TODO: Inject this in constructor

  @override
  Widget build(BuildContext context) {
        return ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            StreamBuilder<SummaryState>(
              stream: _summaryViewModel.uiState,
              builder: (context, snapshot) {
                return !snapshot.hasData ? CircularProgressIndicator() :
                 SummaryRow(
                  selectedCategory: snapshot.data.selectedCategory,
                  summaryInfo: snapshot.data.summaryItems,
                  onCategorySelected: (Category category) {
                    //TODO: Combine these into one ViewModel
                    _summaryViewModel.dispatchAction(CategoryTappedAction(category));
                    _mapStateLevelViewModel.dispatchAction(StateLevelSelectCategoryAction(category));
                  } ,
                );
              }
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
            StreamBuilder<StateLevelState>(
              stream: _mapStateLevelViewModel.uiState,
              builder: (context, snapshot) {
                return !snapshot.hasData ? CircularProgressIndicator() : Container(
                    height: kMapSvgHeight * 1.1,
                    width: kMapSvgWidth * 1.1,
                    child: ZoomableWidget(
                      child: MapWidget(
                        category: snapshot.data.selectedCategory,
                        statistics: snapshot.data.stateLevelInfo,
                      ),
                    ));
              }
            ),
          ],
        );
      }
  }





