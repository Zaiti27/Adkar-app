import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/router.dart';
import 'package:flutter_application_1/widgets/screen_routing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/home.dart';

class IconWidget extends StatelessWidget {
  final Widget route;
  final IconData? iconName;
  final double? size;
  final Color? color;
  final String etat;
  const IconWidget(this.route, this.iconName, this.size, this.color, this.etat);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        changeScreenWithEtat(context, route, etat);
      },
      icon: FaIcon(
        iconName,
        color: color,
        size: size,
      ),
    );
  }
}
