import 'package:flutter/material.dart';

void changeScreenWithEtat(BuildContext context, Widget widget, String etat) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
        settings: RouteSettings(
          arguments: etat,
        ),
      ));
}
