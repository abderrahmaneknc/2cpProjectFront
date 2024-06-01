import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartSample7 extends StatelessWidget {
  final List<FlSpot>? spots1;
  final List<FlSpot>? spots2;
  final List<FlSpot>? spots3;
  final List<FlSpot>? spots4;
  final String b;
  final String k;
  final String r;
  final String g;

  LineChartSample7({
    Key? key,
    this.spots1,
    this.spots2,
    this.spots3,
    this.spots4,
    required this.b,
    required this.k,
    required this.r,
    required this.g,
  }) : super(key: key);

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10, fontWeight: FontWeight.w300);
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Jan';
        break;
      case 1:
        text = 'Feb';
        break;
      case 2:
        text = 'Mar';
        break;
      case 3:
        text = 'Apr';
        break;
      case 4:
        text = 'May';
        break;
      case 5:
        text = 'Jun';
        break;
      case 6:
        text = 'Jul';
        break;
      case 7:
        text = 'Aug';
        break;
      case 8:
        text = 'Sep';
        break;
      case 9:
        text = 'Oct';
        break;
      case 10:
        text = 'Nov';
        break;
      case 11:
        text = 'Dec';
        break;
      default:
        return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 5,
      child: Text(text, style: style),
    );
  }

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(fontSize: 10, fontWeight: FontWeight.w200);
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 20:
        text = '20';
        break;
      case 40:
        text = '40';
        break;
      case 60:
        text = '60';
        break;
      case 80:
        text = '80';
        break;
      case 100:
        text = '100';
        break;
      default:
        return Container();
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 0,
      child: Text(text, style: style),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 5,
          right: 18,
          top: 100,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: LineChart(
                LineChartData(
                  lineTouchData: const LineTouchData(enabled: false),
                  lineBarsData: [
                    LineChartBarData(
                      spots: spots1!,
                      isCurved: false,
                      barWidth: 2,
                      color: Colors.blue,
                      dotData: const FlDotData(
                        show: false,
                      ),
                    ),
                    LineChartBarData(
                      spots: spots2!,
                      isCurved: false,
                      barWidth: 2,
                      color: Colors.black,
                      dotData: const FlDotData(
                        show: false,
                      ),
                    ),
                    LineChartBarData(
                      spots: spots3!,
                      isCurved: false,
                      barWidth: 2,
                      color: Colors.green,
                      dotData: const FlDotData(
                        show: false,
                      ),
                    ),
                    if (spots4 != null && spots4!.isNotEmpty)
                      LineChartBarData(
                        spots: spots4!,
                        isCurved: false,
                        barWidth: 2,
                        color: Colors.red,
                        dotData: const FlDotData(
                          show: false,
                        ),
                      ),
                  ],
                  betweenBarsData: [
                    BetweenBarsData(
                      fromIndex: 0,
                      toIndex: 1,
                      color: Colors.transparent,
                    )
                  ],
                  minY: 0,
                  maxY: 100,
                  borderData: FlBorderData(
                    show: true,
                    border: const Border(
                      bottom: BorderSide(color: Colors.grey),
                      left: BorderSide(color: Colors.grey),
                      right: BorderSide(color: Colors.transparent),
                      top: BorderSide(color: Colors.transparent),
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
                        getTitlesWidget: leftTitleWidgets,
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
                    show: false,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20), // Add spacing between chart and legend
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLegendItem(Colors.blue, b),
                SizedBox(width: 5),
                _buildLegendItem(Colors.black, k),
                SizedBox(width: 5),
                _buildLegendItem(Colors.green, g),
                SizedBox(width: 5),
                _buildLegendItem(
                  spots4 != null && spots4!.isNotEmpty
                      ? Colors.red
                      : Colors.transparent,
                  r,
                )
              ],
            ),

            // Add more legend items if needed for additional series
          ],
        ),
      ),
    );
  }

  Widget _buildLegendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          margin: EdgeInsets.only(right: 5),
        ),
        Text(text),
      ],
    );
  }
}
