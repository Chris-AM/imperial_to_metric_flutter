import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/solid_screen/acre_foot_screen/acre_foot_calculation.dart';

class AcreFootScreen extends StatelessWidget {
  final String acreFootInput;
  const AcreFootScreen({Key? key, required this.acreFootInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Acre-Pie'),
          AcreFootToMetric(acreFoot: acreFootInput),
          Container(
            padding: const EdgeInsets.only(top: 20),
            width: 300,
            child: Column(
              children: [
                const Text(
                  'Equivalencia:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.5,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: const [
                      Text('43560 Pieˆ3'),
                      Text('75271680 Pulgadaˆ3'),
                      Text('0.0000002959280303 Millaˆ3'),
                      Text('Yardaˆ3'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
