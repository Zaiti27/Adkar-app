import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomContainer extends StatelessWidget {
  final double height;
  final double width;
  final BoxShape boxShape;
  final Color color;
  final BorderRadius borderRadius;
  final Widget widget;
  const CustomContainer(this.height, this.width, this.boxShape, this.color,
      this.borderRadius, this.widget);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color, shape: boxShape, borderRadius: borderRadius),
      child: widget,
    );
  }
}
