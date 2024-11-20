import 'package:flutter/cupertino.dart';
import 'package:toss_app/common/common.dart';
import 'package:toss_app/common/widget/w_arrow.dart';
import 'package:toss_app/common/widget/w_rounded_container.dart';

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const BigButton(this.text, {super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text.text.white.size(20).bold.make(),
          const Arrow(),
        ],
      ),
    );
  }
}
