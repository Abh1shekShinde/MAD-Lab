import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
  }

  class Homepage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Charts"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LineCharts(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text("Graph Data",
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
                fontWeight: FontWeight.w700,
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
  }

class LineCharts extends StatelessWidget {
@override
  Widget build(BuildContext context) {
  const cutOffYValue = 0.0;
  const yearTextStyle = TextStyle(fontSize: 13, color: Colors.black);

  return SizedBox(
  width: 360,
  height: 250,
  child: LineChart(
  LineChartData(
  lineTouchData: LineTouchData(enabled: false),
  lineBarsData: [
    LineChartBarData(
      spots: [
        FlSpot(0, 1),
        FlSpot(1, 1),
        FlSpot(2, 2),
        FlSpot(2, 4),
        FlSpot(3, 5),
        FlSpot(5, 3),
      ],
      isCurved:false,
      barWidth: 2,
      colors: [
        Colors.black,
      ],
      belowBarData: BarAreaData(
      show: true,
        colors: [Colors.lightBlue.withOpacity(0.5)],
        cutOffY: cutOffYValue,
        applyCutOffY: true,
  ),
      dotData: FlDotData(
        show: false,
      ),
    ),
  ],

    minY: 0,
    titlesData: FlTitlesData(
      bottomTitles: SideTitles(
        showTitles: true,
        reservedSize: 5,
        textStyle: yearTextStyle,
        getTitles: (value) {
          switch(value.toInt()){
            case 0: return '2012';
            case 1: return '2014';
            case 2: return '2016';
            case 3: return '2018';
            case 4: return '2020';
            default: return '' ;
          }
        }
      ),
      leftTitles: SideTitles(
        showTitles: true,
        getTitles: (value){
          return '\$ ${value + 100}';
        },
      ),
    ),
    axisTitleData: FlAxisTitleData(
      leftTitle: AxisTitle(showTitle: true, titleText: 'Value', margin: 10),
      bottomTitle: AxisTitle(
        showTitle: true,
        margin: 10,
        titleText: "Year",
        textStyle: yearTextStyle,
        textAlign: TextAlign.right)),
    gridData: FlGridData(
      show: true,
      checkToShowHorizontalLine: (double value){
        return value ==1 || value ==2 || value == 3 || value ==4;
      },
    ),
      ),
    ),
  );
}
}