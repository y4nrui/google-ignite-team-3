import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return 'JAN';
              case 2:
                return 'MAR';
              case 4:
                return 'MAY';
              case 6:
                return 'JUL';
              case 8:
                return 'SEP';
              case 10:
                return 'NOV';
            }
            return '';
          },
          margin: 2,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xff67727d),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '\$10';
              case 3:
                return '\$30';
              case 5:
                return '\$50';
            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
      );
}
