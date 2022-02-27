import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/volume_screen/solid_screen/cubic_mile_screen/cubic_mile_calculation.dart';

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
                      Text('147197952000 Pieˆ3'),
                      Text('254358061055996 Pulgadaˆ3'),
                      Text('5451776000 Yardaˆ3'),
                      Text('3379200 Acre-Pie'),
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
