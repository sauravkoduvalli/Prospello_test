import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:prospello_machine_task/components/bar%20chart/bar_chart_data.dart';
import 'package:prospello_machine_task/utils/colors.dart';

class BartChartWidget extends StatelessWidget {
  const BartChartWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          getTextStyles: (context, value) => const TextStyle(
            color: primaryDark,
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return 'M';
              case 2:
                return 'T';
              case 3:
                return 'W';
              case 4:
                return 'T';
              case 5:
                return 'F';
              case 6:
                return 'S';
              case 7:
                return 'S';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(showTitles: false),
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
      ),
      borderData: FlBorderData(show: false),
      alignment: BarChartAlignment.spaceEvenly,
      maxY: 16,
      barGroups: barChartGroupData,
    ));
  }
}
