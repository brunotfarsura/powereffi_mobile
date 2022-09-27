import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:powereffi_mobile/model/barChartModel.dart';

class ChartConsumptionScreen extends StatefulWidget {
  const ChartConsumptionScreen({super.key});

  final Text title = const Text("PowerEffi - Save money and energy!");

  @override
  State<ChartConsumptionScreen> createState() => _ChartConsumptionScreenState();
}

class _ChartConsumptionScreenState extends State<ChartConsumptionScreen> {
  static List<charts.Series<BarChartModel, String>> _createSampleData() {
    final List<BarChartModel> chartData = [
      BarChartModel("Set.", 300, charts.ColorUtil.fromDartColor(Colors.blue)),
      BarChartModel("Out.", 250, charts.ColorUtil.fromDartColor(Colors.red)),
      BarChartModel("Nov.", 400, charts.ColorUtil.fromDartColor(Colors.green)),
    ];

    return /*List<charts.Series<BarChartModel, String>> series =*/ [
      charts.Series(
          id: "Energy_Consumption",
          data: chartData,
          domainFn: (BarChartModel series, _) => series.month,
          measureFn: (BarChartModel series, _) => series.consumption,
          colorFn: (BarChartModel series, _) => series.color),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: widget.title,
        ),
        body: Container(
          height: 400,
          padding: EdgeInsets.all(10),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const Text("Graphic of Energy Consumption"),
                  Expanded(
                    child: charts.BarChart(
                      _createSampleData(),
                      animate: true,
                      domainAxis: const charts.OrdinalAxisSpec(
                        renderSpec: charts.SmallTickRendererSpec(
                          labelRotation: 45,
                          labelStyle: charts.TextStyleSpec(
                            fontSize: 18,
                            color: charts.MaterialPalette.white,
                          ),
                        ),
                      ),
                      primaryMeasureAxis: const charts.NumericAxisSpec(
                        renderSpec: charts.GridlineRendererSpec(
                          labelStyle: charts.TextStyleSpec(
                            fontSize: 18,
                            color: charts.MaterialPalette.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
