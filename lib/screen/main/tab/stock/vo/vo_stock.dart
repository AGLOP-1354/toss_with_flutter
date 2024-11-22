import 'package:toss_app/screen/main/tab/stock/vo/vo_popular_stock.dart';

class Stock extends PopularStock {
  final String stockImagePath;

  Stock({
    required this.stockImagePath,
    required super.yesterdayClosePrice,
    required super.currentPrice,
    required super.stockName,
  });
}