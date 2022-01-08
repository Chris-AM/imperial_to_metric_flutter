import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/liquid_screen/barrel_uk_screen/barrel_uk_calculation.dart';

class BarrelUKScreen extends StatelessWidget {
  final String barrelUKInput;
  const BarrelUKScreen({Key? key, required this.barrelUKInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Barril (UK)'),
          BarrelUKToMetric(barrelUK: barrelUKInput),
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
                      Text('1.3725142006 Barril (US)'),
                      Text('1.0293856504 Barril (Petroleo)'),
                      Text('5760 Onza Líquida (UK)'),
                      Text('5533.9772567 Onza Líquida (US)'),
                      Text('2764800 Minim (UK)'),
                      Text('2656309.0832 Minim (US)'),
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
