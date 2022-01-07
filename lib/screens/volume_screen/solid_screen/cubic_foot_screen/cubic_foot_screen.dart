import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/solid_screen/cubic_foot_screen/cubic_foot_calculation.dart';

class CubicFootScreen extends StatelessWidget {
  final String cubicFootInput;
  const CubicFootScreen({Key? key, required this.cubicFootInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Pieˆ3'),
          CubicFootToMetric(cubicFoot: cubicFootInput),
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
                      Text('0.037037037 Yardasˆ3'),
                      Text('1728 Pulgadasˆ3'),
                      Text('0.0000229568 Acre-foot'),
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
