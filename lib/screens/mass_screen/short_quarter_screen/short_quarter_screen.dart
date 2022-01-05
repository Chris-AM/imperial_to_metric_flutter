import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/mass_screen/grain_screen/grain_calculation.dart';

class GrainScreen extends StatelessWidget {
  final String grainIput;
  const GrainScreen({Key? key, required this.grainIput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cadenas'),
          GrainToMetric(grain: grainIput),
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
                      Text('64798.91 microgramos'),
                      Text('64798910 nanógramos'),
                      Text('0.0022857143 Onzas'),
                      Text('0.0001428571 Libras'),
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
