import 'package:covid19in/constants.dart';
import 'package:covid19in/data/category.dart';
import 'package:covid19in/data/hardcoded_data.dart';
import 'package:covid19in/widgets/maps/map_widget.dart';
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
              print("New selected category = $_selectedCategory");
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
              style: Theme
                  .of(context)
                  .textTheme
                  .headline6
                  .copyWith(color: kConfirmed, fontWeight: FontWeight.bold),
            ),
            RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                  text: "Last updated\n",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: kRecovered),
                  children: <InlineSpan>[
                    TextSpan(
                        text: "about 2 hours ago",
                        style: Theme
                            .of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(
                            color: kRecovered, fontWeight: FontWeight.w600))
                  ]),
            )
          ],
        ),
        Container(
            height: 331.71,
            width: 320.0,
            child: MapWidget(
              category: _selectedCategory,
              statistics: statistics,
            )),
      ],
    );
  }
}

class SummaryData {
  final String title;
  final Category category;
  final int total;
  final int diff;
  final bool showDiff;
  final bool isSelected;

  SummaryData({
    this.title,
    this.category,
    this.total,
    this.diff,
    this.isSelected = false,
    this.showDiff = true
  });
}

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

class SummaryCard extends StatelessWidget {
  final Color summaryColor;
  final SummaryData data;
  final Function onSelected;

  const SummaryCard({
    this.summaryColor,
    this.data, this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelected,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: data.isSelected
                ? summaryColor.withAlpha(32)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                text: "${data.title}\n\n",
                style: Theme
                    .of(context)
                    .textTheme
                    .subtitle2
                    .copyWith(color: summaryColor),
                children: <InlineSpan>[
                  TextSpan(
                      text: data.showDiff ? "[+${data.diff}]\n" : "\n",
                      style: Theme
                          .of(context)
                          .textTheme
                          .caption
                          .copyWith(color: summaryColor)),
                  TextSpan(
                      text: "${data.total}",
                      style: Theme
                          .of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: summaryColor)),
                ]),
          ),
        ),
      ),
    );
  }
}
