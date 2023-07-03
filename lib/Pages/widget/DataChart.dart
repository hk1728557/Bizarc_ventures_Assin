import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DataChart extends StatefulWidget {
  const DataChart({
    super.key,
    required this.chartList,
    required this.weight,
    required this.availability,
  });

  final List<ChartData> chartList;
  final int weight;
  final String availability;
  @override
  State<DataChart> createState() => _DataChartState();
}

class _DataChartState extends State<DataChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfCircularChart(
        series: <CircularSeries>[
          // Renders doughnut chart
          DoughnutSeries<ChartData, String>(
            innerRadius: '70%',
            dataSource: widget.chartList,
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData data, _) => data.name,
            yValueMapper: (ChartData data, _) => data.size.toInt(),
            dataLabelSettings: const DataLabelSettings(
              isVisible: true,
              labelPosition: ChartDataLabelPosition.inside,
            ),
          ),
        ],
        annotations: <CircularChartAnnotation>[
          CircularChartAnnotation(
            widget: Container(
                child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.weight.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.availability.toString(),
                    style: TextStyle(fontSize: 10),
                  )
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  final String name;
  final double size;
  final Color color;

  ChartData(this.name, this.size, this.color);
}
