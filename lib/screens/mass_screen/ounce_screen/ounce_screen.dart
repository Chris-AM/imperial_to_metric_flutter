import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/mass_screen/ounce_screen/ounce_calculation.dart';

class OunceScreen extends StatelessWidget {
  final String ounceInput;
  const OunceScreen({Key? key, required this.ounceInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Onzas'),
          OunceToMetric(ounce: ounceInput),
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
                      Text('0.0025 Quarter (US)'),
                      Text('0.0022321429 Quarter (UK)'),
                      Text('0.0625 Libras'),
                      Text('0.0000625 Kilo libras'),
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
