
import 'package:flutter/material.dart';
import 'package:speaking_analysis/src/views/utils/bar_chart.dart';
import 'package:speaking_analysis/src/views/utils/style.dart';
import 'package:speaking_analysis/src/views/utils/title_row.dart';


class CustomizedBarChart extends StatelessWidget {
  
 
  const CustomizedBarChart(
      {Key? key,
      required this.tileAxis1,
      required this.tileAxis2,
      required this.tileAxis3,
      required this.tileAxis4,
      required this.tileAxis5, required this.occurrenceTopic1, required this.occurrenceTopic2, required this.occurrenceTopic3, required this.occurrenceTopic4, required this.occurrenceTopic5})
      : super(key: key);
  final String tileAxis1;
  final String tileAxis2;
  final String tileAxis3;
  final String tileAxis4;
  final String tileAxis5;
  final int occurrenceTopic1;
  final int occurrenceTopic2;
  final int occurrenceTopic3;
  final int occurrenceTopic4;
  final int occurrenceTopic5;
                 
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Container(
            width: 401,
            height: 415,
            margin: const EdgeInsets.all(13),
            constraints: const BoxConstraints(
              maxHeight: 405
            ),
            decoration: BoxDecoration(
              color: const Color(0xFF000000),
              border: Border.all(color: Colors.grey[200]!),
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey[500]!.withOpacity(1.0),
                  offset: const Offset(1.1, 1.1),
                  blurRadius: 10.0,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: BarChartWidget(
                  occurrenceTopic1: occurrenceTopic1 ,
                  occurrenceTopic2: occurrenceTopic2,
                  occurrenceTopic3: occurrenceTopic3,
                  occurrenceTopic4: occurrenceTopic4,
                  occurrenceTopic5: occurrenceTopic5
              ),
            ),
          ),
          TitleRow(
            title: tileAxis1,
            colorTitle: Style.colors[0],
          ),
          TitleRow(
            title: tileAxis2,
            colorTitle: Style.colors[1],
          ),
          TitleRow(
            title: tileAxis3,
            colorTitle: Style.colors[2],
          ),
          TitleRow(
            title: tileAxis4,
            colorTitle: Style.colors[3],
          ),
          TitleRow(
            title: tileAxis5,
            colorTitle: Style.colors[4],
          ),
        ],
      ),
    );
  }
}


