import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:speaking_analysis/src/views/utils/style.dart';

class BarChartWidget extends StatelessWidget {
  const BarChartWidget({
    Key? key,
    required this.occurrenceTopic1,
    required this.occurrenceTopic2,
    required this.occurrenceTopic3,
    required this.occurrenceTopic4,
    required this.occurrenceTopic5,
  }) : super(key: key);
  final int occurrenceTopic1;
  final int occurrenceTopic2;
  final int occurrenceTopic3;
  final int occurrenceTopic4;
  final int occurrenceTopic5;
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: FlGridData(show: false),
        alignment: BarChartAlignment.spaceAround,
        maxY: 100,
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          tooltipBgColor: Colors.transparent,
          tooltipPadding: const EdgeInsets.all(0),
          tooltipMargin: 9,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  List<BarChartGroupData> get barGroups => [
        BarChartGroupData(
          x: 0,
          barRods: [
            BarChartRodData(
              toY: (occurrenceTopic1.toDouble() / 39) * 100,
              color: Style.colors[0],
              width: 25.0,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 1,
          barRods: [
            BarChartRodData(
              toY: (occurrenceTopic2.toDouble() / 39) * 100,
              color: Style.colors[1],
              width: 25.0,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 2,
          barRods: [
            BarChartRodData(
              toY: (occurrenceTopic3.toDouble() / 39) * 100,
              color: Style.colors[2],
              width: 25.0,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 3,
          barRods: [
            BarChartRodData(
              toY: (occurrenceTopic4.toDouble() / 39) * 100,
              color: Style.colors[3],
              width: 25.0,
            )
          ],
          showingTooltipIndicators: [0],
        ),
        BarChartGroupData(
          x: 4,
          barRods: [
            BarChartRodData(
              toY: (occurrenceTopic5.toDouble() / 39) * 100,
              color: Style.colors[4],
              width: 25.0,
            )
          ],
          showingTooltipIndicators: [0],
        ),
      ];
}
