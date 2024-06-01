import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Stat extends StatefulWidget {
  final Map<String, double> dataMap;

  const Stat({
    Key? key,
    required this.dataMap,
  }) : super(key: key);

  @override
  State<Stat> createState() => _StatState();
}

class _StatState extends State<Stat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PieChart(
        dataMap: widget.dataMap,
        animationDuration: const Duration(milliseconds: 1000),
        chartLegendSpacing: 10,
        initialAngleInDegree: 20,
        chartType: ChartType.disc,
        ringStrokeWidth: 32,
        legendOptions: const LegendOptions(
          showLegendsInRow: false,
          legendPosition: LegendPosition.bottom,
          showLegends: true,
          legendTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        chartValuesOptions: const ChartValuesOptions(
          showChartValueBackground: true,
          showChartValues: true,
          showChartValuesInPercentage: true,
          showChartValuesOutside: false,
          decimalPlaces: 1,
        ),
        // gradientList: ---To add gradient colors---
        // emptyColorGradient: ---Empty Color gradient---
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Stat(
      dataMap: {
        "zerzekkjijiuoyttuytr": 12,
        "ui": 200,
        "photo": 12,
        "public": 20,
        "appdev": 100,
        "fuzejfezu": 20,
      },
    ),
  ));
}
