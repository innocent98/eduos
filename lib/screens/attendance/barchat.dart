import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart' as app_color;


 class MyBarChat extends StatelessWidget {
  const MyBarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 10,
          titlesData: FlTitlesData(
         
            leftTitles: const AxisTitles(sideTitles: SideTitles(reservedSize: 44, showTitles: true)),
            rightTitles:const AxisTitles(sideTitles: SideTitles(reservedSize: 44, showTitles: true)),
            topTitles: const AxisTitles(sideTitles: SideTitles(reservedSize: 44, showTitles: true)),
            bottomTitles: const AxisTitles(sideTitles: SideTitles(reservedSize: 44, showTitles: true)),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          barGroups: [
            BarChartGroupData(x: 0, barRods: [
              BarChartRodData(toY: 8, color: Colors.lightBlueAccent),
            ]),
            BarChartGroupData(x: 1, barRods: [
              BarChartRodData(toY: 3, color: Colors.lightBlueAccent),
            ]),
            BarChartGroupData(x: 2, barRods: [
              BarChartRodData(toY: 6, color: Colors.lightBlueAccent),
            ]),
          ],
        ),
      );
  }
}