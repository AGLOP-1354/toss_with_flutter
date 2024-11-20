import 'package:toss_app/screen/notification/vo/notification_type.dart';

class TossNotification {
  final NotificationType type;
  final String description;
  final DateTime time;
  bool isRead;

  TossNotification(this.type, this.description, this.time,
      {this.isRead = false});
}
