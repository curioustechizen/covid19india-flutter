///
/// Created by Giovanni Terlingen
/// See LICENSE file for more information.
///
import 'package:flutter/material.dart';
import 'map_svg_data.dart';
import 'package:flutter/painting.dart';


class MapWidget extends StatefulWidget {
  MapWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  StateUT _pressedProvince;

  @override
  Widget build(BuildContext context) {
    
    return new LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      double width = constraints.minWidth;
      double height = constraints.minHeight;
      double x = (width / 2.0) - (MapSvgData.width / 2.0);
      double y = (height / 2.0) - (MapSvgData.height / 2.0);
      Offset offset = Offset(x, y);
      double scaleFactor = 1.0;
      //print("width = $width, height = $height, offset = ($x, $y)");

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
      provinces[i] = _buildProvince(StateUT.values[i]);
    }
    return provinces;
  }

  Widget _buildProvince(StateUT province) {
    return ClipPath(
        clipBehavior: Clip.antiAlias,
        child: Stack(children: <Widget>[
          Material(
              color: Color(0xFFFFCCBC),
              child: InkWell(
                  onTap: () => _provincePressed(province),
                  child: Container(
                      color: _pressedProvince == province
                          ? Colors.pink
                          :Colors.transparent
                  ))),
          CustomPaint(painter: PathPainter(province, _pressedProvince == province))
        ]),
        clipper: PathClipper(province));
  }

  void _provincePressed(StateUT province) {
    setState(() {
      _pressedProvince = province;
    });
  }
}

class PathPainter extends CustomPainter {
  final StateUT _province;
  final bool _isPressed;
  PathPainter(this._province, this._isPressed);

  @override
  void paint(Canvas canvas, Size size) {
    Path path = getPathByProvince(_province);
    canvas.drawPath(
        path,
        Paint()
          ..style = PaintingStyle.stroke
          ..color = _isPressed ? Colors.purple : Colors.white
          ..strokeWidth = _isPressed ? 1.5 : 1.0);
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
    return getPathByProvince(_province);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
