import 'package:flutter/cupertino.dart';
import 'package:toss_app/common/common.dart';
import 'package:toss_app/common/widget/w_arrow.dart';

class PointButton extends StatelessWidget {
  final int point;

  const PointButton({super.key, required this.point});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      "내 포인트".text.color(context.appColors.lessImportantText).make(),
      emptyExpanded,
      "$point 원".text.bold.make(),
      width10,
      Arrow(color: context.appColors.lessImportantText),
    ],);
  }
}
