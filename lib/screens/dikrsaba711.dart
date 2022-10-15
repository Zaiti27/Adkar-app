import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/dikrsaba710.dart';
import 'package:flutter_application_1/screens/dikrsaba712.dart';
import 'package:flutter_application_1/screens/evening/dikrMasaa4.dart';
import 'package:flutter_application_1/widgets/container_circle.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:flutter_application_1/widgets/iconWidget.dart';
import 'package:flutter_application_1/widgets/screen_routing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DikrSaba711 extends StatefulWidget {
  const DikrSaba711({Key? key}) : super(key: key);

  @override
  State<DikrSaba711> createState() => _DikrSaba711State();
}

class _DikrSaba711State extends State<DikrSaba711> {
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
                            'باسم الله الذي لا يضر مع اسمه شيء في الأرض و لا في السماء و هو السميع العليم',
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
                IconWidget((etat == 'morning') ? DikrSaba712() : DikrMasaa4(),
                    FontAwesomeIcons.angleLeft, 40, Color(0xff0c4239), etat),
                GestureDetector(
                  onTap: () {
                    _dincrement();
                    if (_counter == 0) {
                      if (etat == 'morning')
                        changeScreenWithEtat(context, DikrSaba712(), etat);
                      else if (etat == 'evening')
                        changeScreenWithEtat(context, DikrMasaa4(), etat);
                    }
                  },
                  child: CircleContainer(_counter),
                ),
                IconWidget(DikrSaba710(), FontAwesomeIcons.angleRight, 40,
                    Color(0xff0c4239), etat),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
