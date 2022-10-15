import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/dikrSaba719.dart';
import 'package:flutter_application_1/screens/dikrSaba721.dart';
import 'package:flutter_application_1/screens/evening/dikrMasaa6.dart';
import 'package:flutter_application_1/widgets/container_circle.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:flutter_application_1/widgets/iconWidget.dart';
import 'package:flutter_application_1/widgets/screen_routing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DikrSaba720 extends StatefulWidget {
  const DikrSaba720({Key? key}) : super(key: key);

  @override
  State<DikrSaba720> createState() => _DikrSaba720State();
}

class _DikrSaba720State extends State<DikrSaba720> {
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
                            '  اللهم عالم الغيب و الشهادة، فاطر السماوات و الأرض، رب كل شيء و مليكه، أشهد أن لا إله إلا أنت، أعوذ بك من شر نفسي و من شر الشيطان و شركه ، و أن أقترف على نفسي سوءا أو أجره إلى مسلم',
                            25,
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
                IconWidget(DikrSaba721(), FontAwesomeIcons.angleLeft, 40,
                    Color(0xff0c4239), etat),
                GestureDetector(
                  onTap: () {
                    _dincrement();
                    if (_counter == 0)
                      changeScreenWithEtat(context, DikrSaba721(), etat);
                  },
                  child: CircleContainer(_counter),
                ),
                IconWidget((etat == 'morning') ? DikrSaba719() : DikrMasaa6(),
                    FontAwesomeIcons.angleRight, 40, Color(0xff0c4239), etat),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
