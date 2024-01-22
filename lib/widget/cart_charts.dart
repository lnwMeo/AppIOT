import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CartCharts extends StatelessWidget {
  const CartCharts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(DateTime(2015, 1), 6),
      ChartData(DateTime(2016, 1), 11),
      ChartData(DateTime(2017, 1), 9),
      ChartData(DateTime(2018, 1), 14),
      ChartData(DateTime(2019, 1), 30),
      ChartData(DateTime(2020, 1), 42),
      ChartData(DateTime(2021, 1), 50),
    ];
    final List<ChartData> chartData1 = [
      ChartData(DateTime(2015, 1), 10),
      ChartData(DateTime(2016, 1), 15),
      ChartData(DateTime(2017, 1), 20),
      ChartData(DateTime(2018, 1), 54),
      ChartData(DateTime(2019, 1), 50),
      ChartData(DateTime(2020, 1), 42),
      ChartData(DateTime(2021, 1), 40),
    ];
    final List<ChartData> chartData2 = [
      ChartData(DateTime(2015, 1), 10),
      ChartData(DateTime(2016, 1), 12),
      ChartData(DateTime(2017, 1), 30),
      ChartData(DateTime(2018, 1), 35),
      ChartData(DateTime(2019, 1), 40),
      ChartData(DateTime(2020, 1), 50),
      ChartData(DateTime(2021, 1), 40),
    ];
    final List<ChartData> chartData3 = [
      ChartData(DateTime(2015, 1), 1),
      ChartData(DateTime(2016, 1), 12),
      ChartData(DateTime(2017, 1), 23),
      ChartData(DateTime(2018, 1), 49),
      ChartData(DateTime(2019, 1), 50),
      ChartData(DateTime(2020, 1), 42),
      ChartData(DateTime(2021, 1), 40),
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      height: MediaQuery.of(context).size.height * 0.25,
      child: Card(
          color: Colors.grey.withOpacity(0.10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 8,
          child: Container(
              child: SfCartesianChart(
                  primaryXAxis: DateTimeAxis(),
                  series: <CartesianSeries<ChartData, DateTime>>[
                // Renders line chart
                LineSeries<ChartData, DateTime>(
                    dataSource: chartData,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
                LineSeries<ChartData, DateTime>(
                    dataSource: chartData1,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
                LineSeries<ChartData, DateTime>(
                    dataSource: chartData2,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y),
                LineSeries<ChartData, DateTime>(
                    dataSource: chartData3,
                    xValueMapper: (ChartData data, _) => data.x,
                    yValueMapper: (ChartData data, _) => data.y)
              ]))),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final DateTime x;
  final double y;
}
