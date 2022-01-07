import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/solid_screen/cubic_mile_screen/cubic_mile_calculation.dart';

class CubicMileScreen extends StatelessWidget {
  final String cubicMileInput;
  const CubicMileScreen({Key? key, required this.cubicMileInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Millaˆ3'),
          CubicMileToMetric(cubicMile: cubicMileInput),
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
                      Text('1613.3333333 Yardaˆ3'),
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
