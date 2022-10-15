import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/customText.dart';
import 'package:flutter_application_1/widgets/notification_api.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  late final LocalNotificationService service;
  @override
  void initState() {
    service = LocalNotificationService();
    service.initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xffd2ebdd),
      title: CustomText('تفعيل الإشعارات', 20, Color(0xff0c4239),
          FontWeight.bold, TextAlign.right),
      actionsAlignment: MainAxisAlignment.spaceAround,
      actions: <Widget>[
        TextButton(
          onPressed: () async {
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
          child: Icon(
            Icons.notification_add,
            color: Color(0xff0c4239),
            size: 30,
          ),
        ),
        TextButton(
          onPressed: () async {
            service.cancelAllNotifications();
          },
          child: Icon(
            Icons.notifications_off,
            color: Color(0xff0c4239),
            size: 30,
          ),
        ),
      ],
    );
  }
}
