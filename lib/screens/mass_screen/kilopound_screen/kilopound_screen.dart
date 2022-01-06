import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/mass_screen/grain_screen/grain_calculation.dart';
import 'package:imperial_to_metric_flutter/screens/mass_screen/kilopound_screen/kilopound_calculation.dart';

class KilopoundScreen extends StatelessWidget {
  final String kilopoundInput;
  const KilopoundScreen({Key? key, required this.kilopoundInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Kilo libras'),
          KilopoundToMetric(kiloPounds: kilopoundInput),
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
                      Text('1000 libras'),
                      Text('7000000 Granos'),
                      Text('16000 Onzas'),
                      Text('35.714285714 Cuartos Cortos (US)'),
                      Text('40 Cuartos Largos (UK)'),
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
