import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/mile_screen/mile_calculation.dart';

class MileScreen extends StatelessWidget {
  final String mileInput;
  const MileScreen({Key? key, required this.mileInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Millas'),
          MileToMetric(mile: mileInput),
        ],
      ),
    );
  }
}
