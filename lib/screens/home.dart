import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/dikr.dart';
import 'package:flutter_application_1/screens/sleeping/dikrNaoum1.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:flutter_application_1/widgets/navigationDrawer.dart';
import 'package:flutter_application_1/widgets/notification_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/pressMenuButton.dart';

class Hoho extends StatefulWidget {
  final String etat;

  const Hoho({required this.etat});

  @override
  State<Hoho> createState() => _HohoState();
}

class _HohoState extends State<Hoho> {
  late final LocalNotificationService service;
  final String enabledNotification = 'notEnabled';
  final KeyIsFirstLoaded = "is_first_loaded";

  @override
  void initState() {
    service = LocalNotificationService();
    service.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showDialogIfFirstLoaded(context));
    return MaterialApp(
      home: Scaffold(
        drawer: NavigationDrawer(),
        backgroundColor: Color(0xffd2ebdd),
        body: Builder(builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                PressMenuButton('أذكار الصباح', Dikr(), 'morning'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                PressMenuButton('أذكار المساء', Dikr(), 'evening'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
                PressMenuButton(' أذكار النوم', DikrNaoum1(), 'sleeping'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 7,
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  showDialogIfFirstLoaded(BuildContext context) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool? isFirstLoaded = preferences.getBool(KeyIsFirstLoaded);
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      padding: EdgeInsets.all(0),
    );
    if (isFirstLoaded == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Color(0xffd2ebdd),
              title: CustomText('تفعيل الإشعارات', 20, Color(0xff0c4239),
                  FontWeight.bold, TextAlign.right),
              content: CustomText(
                  'هذا التطبيق بحاجة إلى تفعيل الإشعارات، هل تسمح بذلك؟',
                  17,
                  Color(0xff0c4239),
                  FontWeight.normal,
                  TextAlign.right),
              actionsAlignment: MainAxisAlignment.spaceAround,
              actions: <Widget>[
                TextButton(
                  style: flatButtonStyle,
                  onPressed: () async {
                    preferences.setBool(KeyIsFirstLoaded, false);
                    Navigator.of(context).pop();
                  },
                  child: CustomText('لا', 16, Color(0xff0c4239),
                      FontWeight.normal, TextAlign.left),
                ),
                TextButton(
                  style: flatButtonStyle,
                  onPressed: () async {
                    Navigator.of(context).pop();
                    preferences.setBool(KeyIsFirstLoaded, false);

                    await service.showScheduledNotificationMorning(
                      id: 0,
                      title: 'أذكار',
                      body: 'إنه وقت قراءة أذكار الصباح',
                    );
                    await service.showScheduledNotificationNight(
                      id: 1,
                      title: 'أذكار',
                      body: 'إنه وقت قراءة أذكار المساء',
                    );
                    await service.showScheduledNotificationSleeping(
                      id: 2,
                      title: 'أذكار',
                      body: 'إنه وقت قراءة أذكار النوم',
                    );
                  },
                  child: CustomText('نعم', 16, Color(0xff0c4239),
                      FontWeight.w900, TextAlign.left),
                ),
              ],
            );
          });
    }
  }
}
