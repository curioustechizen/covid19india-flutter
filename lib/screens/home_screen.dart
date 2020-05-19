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
                    _summaryViewModel.dispatchAction(SummaryAction.categoryTapped(category));
                    _mapStateLevelViewModel.dispatchAction(StateLevelAction.selectCategory(category));
                  } ,
                );
              }
            ),
            SizedBox(
              height: 32.0,
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





