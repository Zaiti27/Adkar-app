import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/dikrSaba72.dart';
import 'package:flutter_application_1/widgets/container_circle.dart';
import 'package:flutter_application_1/widgets/router.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:flutter_application_1/widgets/screen_routing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/iconWidget.dart';

class Dikr extends StatefulWidget {
  const Dikr({Key? key}) : super(key: key);

  @override
  State<Dikr> createState() => _DikrState();
}

class _DikrState extends State<Dikr> {
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
                            'باسم الله الرحمن الرحيم: الله لا إله إلا هو الحي القيوم لا تأخذه سنة و لا نوم له ما في السماوات و ما في الأرض من ذا الذي يشفع عنده إلا بإذنه يعلم ما بين أيديهم و ما خلفهم و ما يحيطون بشيء من علمه إلا بما شاء وسع كرسيه السماوات والأرض ولا يؤوذه حفظهما و هو العلي العظيم ',
                            24,
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
                IconWidget(DikrSaba72(), FontAwesomeIcons.angleLeft, 40,
                    Color(0xff0c4239), etat),
                GestureDetector(
                  onTap: () {
                    _dincrement();
                    if (_counter == 0)
                      changeScreenWithEtat(context, DikrSaba72(), etat);
                  },
                  child: CircleContainer(_counter),
                ),
                IconWidget(
                    Hoho(
                      etat: etat,
                    ),
                    FontAwesomeIcons.angleRight,
                    40,
                    Color(0xff0c4239),
                    etat),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
