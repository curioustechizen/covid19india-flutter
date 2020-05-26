import 'package:covid19in/widgets/summary/summary_card.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:presentation/presentation.dart';

import '../../constants.dart';

class SummaryRow extends StatelessWidget {
  final Function onCategorySelected;
  final Category selectedCategory;
  final Map<Category, SummaryItemState> summaryInfo;

  const SummaryRow(
      {@required this.onCategorySelected,
      @required this.selectedCategory,
      @required this.summaryInfo});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: AnimationConfiguration.toStaggeredList(
            duration: kAnimationDurationLong,
            childAnimationBuilder: (widget) => SlideAnimation(
              horizontalOffset: 48.0,
              child: FadeInAnimation(child: widget),
            ),
            children: <Widget>[
              SummaryCard(
                summaryColor: kConfirmed,
                onSelected: () {
                  onCategorySelected(Category.confirmed);
                },
                data: SummaryData(
                    title: summaryInfo[Category.confirmed].title,
                    category: Category.confirmed,
                    total: summaryInfo[Category.confirmed].total,
                    diff: summaryInfo[Category.confirmed].diff,
                    isSelected: selectedCategory == Category.confirmed),
              ),
              SummaryCard(
                summaryColor: kActive,
                onSelected: () {
                  onCategorySelected(Category.active);
                },
                data: SummaryData(
                    title: summaryInfo[Category.active].title,
                    category: Category.active,
                    total: summaryInfo[Category.active].total,
                    diff: summaryInfo[Category.active].diff,
                    isSelected: selectedCategory == Category.active),
              ),
              SummaryCard(
                summaryColor: kRecovered,
                onSelected: () {
                  onCategorySelected(Category.recovered);
                },
                data: SummaryData(
                    title: summaryInfo[Category.recovered].title,
                    category: Category.recovered,
                    total: summaryInfo[Category.recovered].total,
                    diff: summaryInfo[Category.recovered].diff,
                    isSelected: selectedCategory == Category.recovered),
              ),
              SummaryCard(
                summaryColor: kDeceased,
                onSelected: () {
                  onCategorySelected(Category.deceased);
                },
                data: SummaryData(
                    title: summaryInfo[Category.deceased].title,
                    category: Category.deceased,
                    total: summaryInfo[Category.deceased].total,
                    diff: summaryInfo[Category.deceased].diff,
                    isSelected: selectedCategory == Category.deceased),
              ),
            ],
          )),
    );
  }
}
