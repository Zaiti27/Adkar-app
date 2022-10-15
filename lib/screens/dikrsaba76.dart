import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/dikrSaba75.dart';
import 'package:flutter_application_1/screens/dikrSaba77.dart';
import 'package:flutter_application_1/widgets/container_circle.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/iconWidget.dart';
import '../widgets/screen_routing.dart';
import 'evening/dikrMasaa1.dart';

class DikrSaba76 extends StatefulWidget {
  const DikrSaba76({Key? key}) : super(key: key);

  @override
  State<DikrSaba76> createState() => _DikrSaba76State();
}

class _DikrSaba76State extends State<DikrSaba76> {
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
                            'اللهم أنت ربي لا إله أنت، خلقتني و أنا عبدك، و أنا على عهدك و وعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك علي و أبوء بذنبي فاغفر لي فإنه لا يغفر الذنوب إلا أنت',
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
                IconWidget(DikrSaba77(), FontAwesomeIcons.angleLeft, 40,
                    Color(0xff0c4239), etat),
                GestureDetector(
                  onTap: () {
                    _dincrement();
                    if (_counter == 0)
                      changeScreenWithEtat(context, DikrSaba77(), etat);
                  },
                  child: CircleContainer(_counter),
                ),
                IconWidget((etat == 'morning') ? DikrSaba75() : DikrMasaa1(),
                    FontAwesomeIcons.angleRight, 40, Color(0xff0c4239), etat),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
