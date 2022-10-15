import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/sleeping/dikrNaoum13.dart';
import 'package:flutter_application_1/widgets/container_circle.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:flutter_application_1/widgets/iconWidget.dart';
import 'package:flutter_application_1/widgets/screen_routing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dikrNaoum15.dart';

class DikrNaoum14 extends StatefulWidget {
  const DikrNaoum14({Key? key}) : super(key: key);

  @override
  State<DikrNaoum14> createState() => _DikrNaoum14State();
}

class _DikrNaoum14State extends State<DikrNaoum14> {
  int _counter = 1;
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
                            'باسم الله الرحمن الرحيم: آمن الرسول بما أنزل إليه من ربه و المؤمنون كل آمن بالله و ملائكته و كتبه و رسله لا نفرق بين أحد من رسله و قالوا سمعنا و أطعنا غفرانك ربنا و إليك المصير* لا يكلف الله نفسا إلا وسعها لها ما كسبت و عليها ما اكتسبت ربنا لا تؤاخذنا إن نسينا أو أخطأنا ربنا و لا تحمل علينا إصرا كما حملته على الذين من قبلنا و لا تحملنا ما لا طاقة لنا به و اعف عنا و ارحمنا أنت مولانا فانصرنا على القوم الكافرين  ',
                            19,
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
                IconWidget(DikrNaoum15(), FontAwesomeIcons.angleLeft, 40,
                    Color(0xff0c4239), etat),
                GestureDetector(
                  onTap: () {
                    _dincrement();
                    if (_counter == 0)
                      changeScreenWithEtat(context, DikrNaoum15(), etat);
                  },
                  child: CircleContainer(_counter),
                ),
                IconWidget(DikrNaoum13(), FontAwesomeIcons.angleRight, 40,
                    Color(0xff0c4239), etat),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
