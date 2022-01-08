import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/dries_screen/peck_us_screen/peck_us_calculation.dart';

class PeckUSScreen extends StatelessWidget {
  final String peckUsInput;
  const PeckUSScreen({Key? key, required this.peckUsInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Peck (US)'),
          PeckUSMetric(peckUS: peckUsInput),
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
                      Text('0.24223474458271 Bushel (UK)'),
                      Text('0.25 Bushel (US)'),
                      Text('2 Galón'),
                      Text('7.7515118266466 Cuarto (UK)'),
                      Text('8 Cuarto (US)')
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
