import 'package:covid19in/constants.dart';
import 'package:flutter/material.dart';

class DecorationAnimationBuilder extends StatelessWidget {
  //final BoxDecoration startDecoration;
  final BoxDecoration endDecoration;
  final Widget child;

  const DecorationAnimationBuilder(
      {Key key, this.child, this.endDecoration})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final boxDecorationTween = DecorationTween(
      begin: BoxDecoration(color: Colors.transparent, borderRadius: endDecoration.borderRadius),
      end: endDecoration,
    );

    return TweenAnimationBuilder(
      tween: boxDecorationTween,
      duration: kAnimationDurationShort,
      curve: Curves.easeInOut,
      builder: (BuildContext context, Decoration decor, Widget child) {
        return DecoratedBox(
          decoration: decor,
          child: child,
        );
      },
      child: this.child,
    );
  }
}
