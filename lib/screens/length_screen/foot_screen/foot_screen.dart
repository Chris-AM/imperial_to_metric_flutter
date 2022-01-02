import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/foot_screen/foot_calculation.dart';

class FootScreen extends StatelessWidget {
  final String footInput;
  const FootScreen({Key? key, required this.footInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Pie'),
          FeetToMetric(feet: footInput),
        ],
      ),
    );
  }
}
