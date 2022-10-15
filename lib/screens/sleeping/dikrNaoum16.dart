import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/sleeping/dikrNaoum15.dart';
import 'package:flutter_application_1/widgets/container_circle.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:flutter_application_1/widgets/iconWidget.dart';
import 'package:flutter_application_1/widgets/screen_routing.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DikrNaoum16 extends StatefulWidget {
  const DikrNaoum16({Key? key}) : super(key: key);

  @override
  State<DikrNaoum16> createState() => _DikrNaoum16State();
}

class _DikrNaoum16State extends State<DikrNaoum16> {
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
                            'باسم الله الرحمن الرحيم: قل يا أيها الكافرون* لا أعبد ما تعبدون* و لا أنتم عابدون ما أعبد* ولا أنا عابد ما عبدتم* و لا أنتم عابدون ما أعبد* لكم دينكم و لي دين',
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
                IconWidget(
                    Hoho(
                      etat: etat,
                    ),
                    FontAwesomeIcons.angleLeft,
                    40,
                    Color(0xff0c4239),
                    etat),
                GestureDetector(
                  onTap: () {
                    _dincrement();
                    if (_counter == 0)
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              backgroundColor: Color(0xffd2ebdd),
                              title: CustomText(
                                  'لقد أتممت قراء الأذكار بارك الله فيك',
                                  20,
                                  Color(0xff0c4239),
                                  FontWeight.bold,
                                  TextAlign.right),
                              actionsAlignment: MainAxisAlignment.spaceAround,
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    changeScreenWithEtat(
                                        context,
                                        Hoho(
                                          etat: etat,
                                        ),
                                        etat);
                                  },
                                  child: Icon(
                                    Icons.home,
                                    color: Color(0xff0c4239),
                                    size: 35,
                                  ),
                                ),
                              ],
                            );
                          });
                  },
                  child: CircleContainer(_counter),
                ),
                IconWidget(DikrNaoum15(), FontAwesomeIcons.angleRight, 40,
                    Color(0xff0c4239), etat),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
