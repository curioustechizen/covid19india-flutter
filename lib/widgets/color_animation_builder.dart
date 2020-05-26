import 'package:covid19in/constants.dart';
import 'package:flutter/material.dart';

class ColorAnimationBuilder extends StatelessWidget {
  final Color color;
  final Widget child;

  const ColorAnimationBuilder({Key key, this.color, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: ColorTween(begin: Colors.transparent, end: color),
      duration: kAnimationDurationLong,
      curve: Curves.easeInOut,
      builder: (BuildContext context, Color col, Widget child) {
        return Container(
          color: col,
          child: child,
        );
      },
      child: this.child,
    );
  }
}
