import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/mass_screen/quintal_screen/quintal_calculation.dart';

class QuintalScreen extends StatelessWidget {
  final String quintalInput;
  const QuintalScreen({Key? key, required this.quintalInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Quintales'),
          QuintalToMetric(quintal: quintalInput),
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
                      Text('220.46226218 libras'),
                      Text('1543235.8353 Granos'),
                      Text('3527.396195 Onzas'),
                      Text('8.8184904874 Cuartos Cortos (US)'),
                      Text('7.8736522209 Cuartos Largos (UK)'),
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
