import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/widgets/customContainer.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:flutter_application_1/widgets/screen_routing.dart';
import 'package:google_fonts/google_fonts.dart';

class PressMenuButton extends StatelessWidget {
  final String? text;
  final Widget routeScreen;
  final String argument;
  PressMenuButton(this.text, this.routeScreen, this.argument);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          changeScreenWithEtat(context, routeScreen, argument);
        },
        child: CustomContainer(
            MediaQuery.of(context).size.height / 7,
            2 * (MediaQuery.of(context).size.width / 3),
            BoxShape.rectangle,
            Color(0xff0c4239),
            BorderRadius.circular(40),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 10, left: 10, right: 10),
              child: CustomText('$text', 30, Color(0xffd2ebdd),
                  FontWeight.normal, TextAlign.center),
            )));
  }
}
