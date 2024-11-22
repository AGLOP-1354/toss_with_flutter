import 'package:toss_app/common/common.dart';
import 'package:flutter/material.dart';

import '../vo/vo_stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;

  const StockItem(this.stock, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          width10,
          Image.asset(stock.stockImagePath, width: 50),
          width20,
          (stock.stockName).text.size(18).bold.color(Colors.white).make(),
          emptyExpanded,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (stock.todayPercentageString)
                  .text
                  .bold
                  .color(stock.getTodayPercentageColor(context))
                  .make(),
              height5,
              (stock.yesterdayClosePrice.toComma())
                  .text
                  .color(context.appColors.lessImportantText)
                  .make(),
            ],
          ),
          width10,
        ],
      ),
    );
  }
}
