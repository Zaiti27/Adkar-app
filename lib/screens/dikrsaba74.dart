import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/dikr.dart';
import 'package:flutter_application_1/screens/dikrSaba73.dart';
import 'package:flutter_application_1/screens/dikrSaba75.dart';
import 'package:flutter_application_1/screens/evening/dikrMasaa1.dart';
import 'package:flutter_application_1/widgets/container_circle.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/iconWidget.dart';
import '../widgets/screen_routing.dart';

class DikrSaba74 extends StatefulWidget {
  const DikrSaba74({Key? key}) : super(key: key);

  @override
  State<DikrSaba74> createState() => _DikrSaba74State();
}

class _DikrSaba74State extends State<DikrSaba74> {
  int _counter = 3;
  void _dincrement() {
    setState(() {
      if (_counter != 0) _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    final etat = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: Color(0xffd2ebdd),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 7,
            ),
            //han win kayn do3a2
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: (MediaQuery.of(context).size.height / 3) * 2,
                    width: (MediaQuery.of(context).size.width / 4) * 3,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, right: 10, left: 10, bottom: 10),
                        child: CustomText(
                            'باسم الله الرحمن الرحيم: قل أعوذ برب الناس* ملك الناس* إله الناس* من شر الوسواس الخناس* الذي يوسوس في صدور الناس* من الجنة و الناس',
                            26,
                            Color(0xff0c4239),
                            FontWeight.bold,
                            TextAlign.center),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 18,
            ),
            //la barre ta7tania ga3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconWidget((etat == 'morning') ? DikrSaba75() : DikrMasaa1(),
                    FontAwesomeIcons.angleLeft, 40, Color(0xff0c4239), etat),
                GestureDetector(
                  onTap: () {
                    _dincrement();
                    if (_counter == 0) {
                      if (etat == 'morning')
                        changeScreenWithEtat(context, DikrSaba75(), etat);
                      else if (etat == 'evening')
                        changeScreenWithEtat(context, DikrMasaa1(), etat);
                    }
                  },
                  child: CircleContainer(_counter),
                ),
                IconWidget(DikrSaba73(), FontAwesomeIcons.angleRight, 40,
                    Color(0xff0c4239), etat),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
