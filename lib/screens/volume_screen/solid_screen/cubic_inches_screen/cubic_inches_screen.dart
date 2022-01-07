import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/solid_screen/cubic_inches_screen/cubic_inches_calculation.dart';

class CubicInchesScreen extends StatelessWidget {
  final String cubicInchesInput;
  const CubicInchesScreen({Key? key, required this.cubicInchesInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Pulgadaˆ3'),
          CubicInchesToMetric(cubicInches: cubicInchesInput),
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
                      Text('0.000000000000016387064 Millasˆ3'),
                      Text('0.0000214335 Yardasˆ3'),
                      Text('0.0005787037 Piesˆ3'),
                      Text('0.0346320346 Pintas'),
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
