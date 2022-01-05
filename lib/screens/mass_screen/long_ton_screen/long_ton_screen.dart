import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/mass_screen/long_ton_screen/long_ton_calculation.dart';

class LongTonScreen extends StatelessWidget {
  final String longTonInput;
  const LongTonScreen({Key? key, required this.longTonInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cadenas'),
          LongTonToMetric(longTon: longTonInput),
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
                      Text('89.6 Quarter (US)'),
                      Text('80 Quarter (UK)'),
                      Text('2.24 Kilo Toneladas'),
                      Text('2240 Libras'),
                      Text('0.8928571429 Tonaladas Cortas'),
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
