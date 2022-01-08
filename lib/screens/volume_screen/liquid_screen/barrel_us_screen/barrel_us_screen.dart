import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/liquid_screen/barrel_us_screen/barrel_us_calculation.dart';

class BarrelUSScreen extends StatelessWidget {
  final String barrelUSInput;
  const BarrelUSScreen({Key? key, required this.barrelUSInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Barril (US)'),
          BarrelUSToMetric(barrelUS: barrelUSInput),
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
                      Text('0.7285899116 Barril (UK)'),
                      Text('0.75 Barril (Petroleo)'),
                      Text('4196.6778905 Onza Líquida (UK)'),
                      Text('4032 Onza Líquida (US)'),
                      Text('2014405.3875 Minim (UK)'),
                      Text('1935360 Minim (US)'),
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
