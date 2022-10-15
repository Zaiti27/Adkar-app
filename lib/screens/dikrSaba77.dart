import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/dikrSaba78.dart';
import 'package:flutter_application_1/screens/dikrsaba76.dart';
import 'package:flutter_application_1/screens/evening/dikrMasaa2.dart';
import 'package:flutter_application_1/widgets/container_circle.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/iconWidget.dart';
import '../widgets/screen_routing.dart';

class DikrSaba77 extends StatefulWidget {
  const DikrSaba77({Key? key}) : super(key: key);

  @override
  State<DikrSaba77> createState() => _DikrSaba77State();
}

class _DikrSaba77State extends State<DikrSaba77> {
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
                            'رضيت بالله ربا و بالإسلام دينا و بمحمد صلى الله عليه و سلم نبيا و رسولا',
                            30,
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
                IconWidget((etat == 'morning') ? DikrSaba78() : DikrMasaa2(),
                    FontAwesomeIcons.angleLeft, 40, Color(0xff0c4239), etat),
                GestureDetector(
                  onTap: () {
                    _dincrement();
                    if (_counter == 0) {
                      if (etat == 'morning')
                        changeScreenWithEtat(context, DikrSaba78(), etat);
                      else if (etat == 'evening')
                        changeScreenWithEtat(context, DikrMasaa2(), etat);
                    }
                  },
                  child: CircleContainer(_counter),
                ),
                IconWidget(DikrSaba76(), FontAwesomeIcons.angleRight, 40,
                    Color(0xff0c4239), etat),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
