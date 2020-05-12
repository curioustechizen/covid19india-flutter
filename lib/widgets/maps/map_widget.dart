import 'dart:math';

import 'package:covid19in/constants.dart';
import 'package:covid19in/data/category.dart';
///
/// Created by Giovanni Terlingen
/// See LICENSE file for more information.
///
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'map_svg_data.dart';


class MapWidget extends StatefulWidget {
  final Map<StateUT, int> statistics;
  final Category category;

  MapWidget({Key key, this.statistics, this.category}): super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  StateUT _pressedProvince;


  _MapWidgetState();

  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      double width = constraints.minWidth;
      double height = constraints.minHeight;
      double x = (width / 2.0) - (MapSvgData.width / 2.0);
      double y = (height / 2.0) - (MapSvgData.height / 2.0);
      Offset offset = Offset(x, y);
      double scaleFactor = 1.0;

      return Transform.scale(
          scale: ((height / MapSvgData.height)) * scaleFactor,
          child: Transform.translate(
              offset: offset,
              child: Stack(children: _buildMap())
          )
      );
    });
  }

  List<Widget> _buildMap() {
    List<Widget> provinces = List(StateUT.values.length);
    for (int i = 0; i < StateUT.values.length; i++) {
      provinces[i] = _buildRegion(StateUT.values[i]);
    }
    return provinces;
  }

  Widget _buildRegion(StateUT region) {
    return ClipPath(
        clipBehavior: Clip.antiAlias,
        child: Stack(children: <Widget>[
          Material(
              child: InkWell(
                  onTap: () => _regionPressed(region),
                  child: Container(
                      color: getColorForStatGradient(widget.statistics[region], widget.category)
                  ))),
          CustomPaint(painter: PathPainter(region, _pressedProvince == region, widget.category))
        ]),
        clipper: PathClipper(region));
  }

  void _regionPressed(StateUT province) {
    setState(() {
      _pressedProvince = province;
    });
  }
}

class PathPainter extends CustomPainter {
  final StateUT _province;
  final bool _isPressed;
  final Category _category;
  PathPainter(this._province, this._isPressed, this._category);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = getPathByRegion(_province);

    var baseColor = getBaseColorForCategory(_category);
    canvas.drawPath(
        path,
        Paint()
          ..style = PaintingStyle.stroke
          ..color = _isPressed ? baseColor : baseColor.withAlpha(64)
          ..strokeWidth = _isPressed ? 3.0 : 1.0);
  }

  @override
  bool shouldRepaint(PathPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(PathPainter oldDelegate) => false;
}

class PathClipper extends CustomClipper<Path> {
  final StateUT _province;
  PathClipper(this._province);

  @override
  Path getClip(Size size) {
    return getPathByRegion(_province);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Color getColorForStatGradient(int count, Category category) {

  final colors = colorGradientMap[category];
  final start = colors[0];
  final end = colors[1];


  final fraction = count.toDouble() / getMaxCountForCategory(category);
  final adjusted = min(max(fraction, 0.05), 0.95);
  return Color.lerp(start, end, adjusted);
}

Color getBaseColorForCategory(Category category) {
  switch(category) {
    case Category.confirmed:
      return kConfirmed;
    case Category.active:
      return kActive;
    case Category.recovered:
      return kRecovered;
    case Category.deceased:
      return kDeceased;
    case Category.tested:
      return kTested;
  }
}

int getMaxCountForCategory(Category category) {
//  switch(category) {
//    case Category.confirmed:
//      return 25000;
//    case Category.active:
//      return 20000;
//    case Category.recovered:
//      return 4000;
//    case Category.deceased:
//      return 1000;
//    case Category.tested:
//      return 250000;
//  }
return 25000;
}