import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/fathom_screen/fathom_calculator.dart';

class FathomScreen extends StatelessWidget {
  final String fathomInput;
  const FathomScreen({Key? key, required this.fathomInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Leaguas'),
          FathomToMetric(fathom: fathomInput),
        ],
      ),
    );
  }
}
