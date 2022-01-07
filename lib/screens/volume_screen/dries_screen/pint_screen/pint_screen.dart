import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/dries_screen/pint_screen/pint_calculation.dart';

class PintScreen extends StatelessWidget {
  final String pintInput;
  const PintScreen({Key? key, required this.pintInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Acre-Pie'),
          PintToMetric(pint: pintInput),
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
                      Text(' Bushel (UK)'),
                      Text(' Bushel (US)'),
                      Text(' Galón'),
                      Text(' Cuarto Líquido (UK)'),
                      Text(' Cuarto Líquido (US)')
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
