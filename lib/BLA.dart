import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class LineGraphExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Line Graph with Labels'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: LineChart(
                LineChartData(
                  gridData: FlGridData(show: true),
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          if (value % 2 == 0) {
                            return Text(
                              '₹${(value * 2).toStringAsFixed(0)}L',
                              style: TextStyle(fontSize: 12.sp),
                            );
                          }
                          return Container();
                        },
                        reservedSize: 50,
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          if (value % 2 == 0) {
                            return Text(
                              (2000 + value * 2).toString(),
                              style: TextStyle(fontSize: 12.sp),
                            );
                          }
                          return Container();
                        },
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: const Border.symmetric(
                      horizontal: BorderSide(color: Colors.black, width: 1),
                      vertical: BorderSide(color: Colors.black, width: 1),
                    ),
                  ),
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: 6,
                  lineBarsData: [
                    // Emergency Line (Blue)
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 1),
                        FlSpot(1, 2),
                        FlSpot(2, 3),
                        FlSpot(3, 4),
                        FlSpot(4, 5),
                        FlSpot(5, 6),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(show: false),
                    ),
                    // Retirement Line (Red)
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 2),
                        FlSpot(1, 2.5),
                        FlSpot(2, 3.5),
                        FlSpot(3, 4.5),
                        FlSpot(4, 5.5),
                        FlSpot(5, 6),
                      ],
                      isCurved: true,
                      color: Colors.red,
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(show: false),
                    ),
                    // Travel Line (Green)
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 1.5),
                        FlSpot(1, 2),
                        FlSpot(2, 2.5),
                        FlSpot(3, 3),
                        FlSpot(4, 4),
                        FlSpot(5, 5),
                      ],
                      isCurved: true,
                      color: Colors.green,
                      dotData: FlDotData(show: true),
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Legend
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildLegendItem(Colors.blue, 'Emergency'),
                SizedBox(width: 16.w),
                _buildLegendItem(Colors.red, 'Retirement'),
                SizedBox(width: 16.w),
                _buildLegendItem(Colors.green, 'Travel'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 12.w,
          height: 12.h,
          color: color,
        ),
        SizedBox(width: 8.w),
        Text(text, style: TextStyle(fontSize: 14.sp)),
      ],
    );
  }
}
