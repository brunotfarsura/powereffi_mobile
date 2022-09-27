import 'package:charts_flutter/flutter.dart' as charts;

class BarChartModel {
  String month;
  int consumption;
  final charts.Color color;

  BarChartModel(this.month, this.consumption, this.color);
}
