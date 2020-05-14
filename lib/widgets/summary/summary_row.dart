
import 'package:covid19in/widgets/summary/summary_card.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class SummaryRow extends StatelessWidget {
  final Function onCategorySelected;
  final Category selectedCategory;

  const SummaryRow({this.onCategorySelected, this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SummaryCard(
          summaryColor: kConfirmed,
          onSelected: () {
            onCategorySelected(Category.confirmed);
          },
          data: SummaryData(
              title: "Confirmed",
              category: Category.confirmed,
              total: 67161,
              diff: 4296,
              isSelected: selectedCategory == Category.confirmed),
        ),
        SummaryCard(
          summaryColor: kActive,
          onSelected: () {
            onCategorySelected(Category.active);
          },
          data: SummaryData(
              title: "Active",
              category: Category.active,
              total: 43976,
              showDiff: false,
              isSelected: selectedCategory == Category.active),
        ),
        SummaryCard(
          summaryColor: kRecovered,
          onSelected: () {
            onCategorySelected(Category.recovered);
          },
          data: SummaryData(
              title: "Recovered",
              category: Category.recovered,
              total: 20969,
              diff: 1668,
              isSelected: selectedCategory == Category.recovered),
        ),
        SummaryCard(
          summaryColor: kDeceased,
          onSelected: () {
            onCategorySelected(Category.deceased);
          },
          data: SummaryData(
              title: "Deceased",
              category: Category.deceased,
              total: 2212,
              diff: 111,
              isSelected: selectedCategory == Category.deceased),
        ),
      ],
    );
  }
}
