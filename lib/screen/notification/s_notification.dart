import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toss_app/screen/notification/notifications_dummy.dart';
import 'package:toss_app/screen/notification/w_notification_item.dart';

import 'd_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(title: Text("알림")),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NotificationItemWidget(
                notification: notificationDummies[index],
                onTap: () {
                  NotificationDialog([notificationDummies[0], notificationDummies[1]]).show();
                },
              ),
              childCount: notificationDummies.length,
            ),
          )
        ],
      ),
    );
  }
}
