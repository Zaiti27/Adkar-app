import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/customText.dart';

class CircleContainer extends StatelessWidget {
  final int counter;
  const CircleContainer(this.counter);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.height / 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xff0c4239),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: CustomText('$counter', 30, Color(0xffd2ebdd), FontWeight.bold,
              TextAlign.center),
        ),
      ),
    );
  }
}
