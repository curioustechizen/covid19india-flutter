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
  MapWidget({this.title, this.statistics, this.category});

  final String title;

  @override
  _MapWidgetState createState() => _MapWidgetState(statistics, category);
}

class _MapWidgetState extends State<MapWidget> {
  StateUT _pressedProvince;
  final Map<StateUT, int> _statistics;
  final Category _category;

  _MapWidgetState(this._statistics, this._category);

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
              color: Color(0xFFFFCCBC),
              child: InkWell(
                  onTap: () => _regionPressed(region),
                  child: Container(
                      color: getColorForStat(_statistics[region], _category)
                  ))),
          CustomPaint(painter: PathPainter(region, _pressedProvince == region, _category))
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
          ..strokeWidth = _isPressed ? 2.0 : 1.0);
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

Color getColorForStat(int count, Category category) {
  final baseColor = getBaseColorForCategory(category);
  final maxLightness = 0.95;
  final minLightness = 0.4;
  final fraction = 1.0 - count.toDouble() / getMaxCountForCategory(category);
  final lightness = fraction > maxLightness ? maxLightness : fraction;
  final lightness1 = lightness < minLightness ? minLightness : lightness;
  return HSLColor.fromColor(baseColor).withLightness(lightness1).toColor();
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
  switch(category) {
    case Category.confirmed:
      return 25000;
    case Category.active:
      return 20000;
    case Category.recovered:
      return 4000;
    case Category.deceased:
      return 1000;
    case Category.tested:
      return 250000;
  }
}