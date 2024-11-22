import 'package:toss_app/common/common.dart';
import 'package:toss_app/common/widget/w_login_button.dart';
import 'package:toss_app/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/w_arrow.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), height20, getMyStock(context)],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    color: context.appColors.roundedLayoutBackground,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        height20,
        '계좌'.text.make(),
        Row(
          children: [
            '443원'.text.size(24).bold.make(),
            const Arrow(),
            emptyExpanded,
            RoundedContainer(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              radius: 8,
              backgroundColor: context.appColors.buttonBackground,
              child: '채우기'.text.size(12).make(),
            )
          ],
        ),
        height30,
        Line(
          color: context.appColors.divider,
        ),
        height10,
        LoginButton(title: '주문내역'),
        LoginButton(title: '판매수익'),
      ],
    ),
  );

  Widget getMyStock(BuildContext context) {
    return Container(
      color: context.appColors.roundedLayoutBackground,
      child: Column(
        children: [
          height30,
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  '관심주식'.text.bold.make(),
                  '편집하기'.text.color(context.appColors.lessImportantText).make()
                ],
              ),
              height20,
              Tap(
                onTap: () {
                  context.showSnackbar('기본');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    '기본'.text.make(),
                    const Arrow(direction: AxisDirection.up),
                  ],
                ).pSymmetric(v: 10),
              ),
            ],
          ).pSymmetric(h: 20),
        ],
      ),
    );
  }
}