import 'package:flutter/cupertino.dart';
import 'package:toss_app/common/common.dart';
import 'package:toss_app/common/widget/w_arrow.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const LoginButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          title.text.make(),
          emptyExpanded,
          Arrow(
            color: context.appColors.lessImportantText,
          )
        ],
      ),
    );
  }
}
