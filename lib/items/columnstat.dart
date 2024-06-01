import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Columnstat extends StatelessWidget {
  final List<String> names;
  final List<double> values;

  const Columnstat({super.key, required this.names, required this.values});

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10, fontWeight: FontWeight.w300);
    String text;
    if (value.toInt() >= 1 && value.toInt() <= names.length) {
      text = names[value.toInt() - 1];
    } else {
      return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 5,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: BarChart(
          BarChartData(
            borderData: FlBorderData(
              border: const Border(
                top: BorderSide.none,
                right: BorderSide.none,
                left: BorderSide(width: 1),
                bottom: BorderSide(width: 1),
              ),
            ),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  getTitlesWidget: bottomTitleWidgets,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 20,
                  reservedSize: 36,
                ),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            gridData: FlGridData(
              show: false, // Disable grid lines
            ),
            groupsSpace: 10,
            barGroups: List.generate(names.length, (index) {
              return BarChartGroupData(
                x: index + 1,
                barRods: [
                  BarChartRodData(
                    toY: values[index],
                    width: 15,
                    color: Color(0xFF2D3D51),
                    borderRadius: BorderRadius.zero,
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
