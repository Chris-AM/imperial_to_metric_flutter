import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/mass_screen/pound_screen/pound_calculation.dart';

class PoundScreen extends StatelessWidget {
  final String poundInput;
  const PoundScreen({Key? key, required this.poundInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cadenas'),
          PoundToMetric(pound: poundInput),
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
                      Text('0.001 kilo libras'),
                      Text('7000 Granos'),
                      Text('16 Onzas'),
                      Text('0.04 Cuartos Cortos'),
                      Text('0.0357142857 Cuartos Largos'),
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
