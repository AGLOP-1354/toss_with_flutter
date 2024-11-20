import 'package:flutter/material.dart';
import 'package:toss_app/common/common.dart';
import 'package:toss_app/screen/main/s_main.dart';
import 'package:toss_app/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:toss_app/screen/main/tab/benefit/w_point_button.dart';
import 'package:toss_app/screen/main/tab/benefit/vo/vo_benefit.dart';

import 'benefits_dummy.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigationBottom),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height30,
            "혜택".text.white.bold.size(18).make(),
            const PointButton(
              point: 569,
            ),
            height20,
            "혜택 더 받기".text.white.bold.size(16).make(),
            ...benefitList.map((element) => BenefitItem(element)).toList(),
          ],
        ).pSymmetric(h: 20),
      ),
    );
  }
}
