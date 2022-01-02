import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/yard.screen/yard_calculation.dart';

class YardScreen extends StatelessWidget {
  final String yardInput;
  const YardScreen({Key? key, required this.yardInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Yarda'),
          YardToMetric(yard: yardInput),
        ],
      ),
    );
  }
}
