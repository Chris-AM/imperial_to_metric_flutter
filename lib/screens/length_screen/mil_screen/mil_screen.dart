import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/length_screen/mil_screen/mil_calculation.dart';

class MilScreen extends StatelessWidget {
  final String milInput;
  const MilScreen({Key? key, required this.milInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Mil (Milésima de pulgada)'),
          MilToMetric(mil: milInput),
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
                      Text('0.001 pulgadas'),
                      Text('25.4 micrómetros'),
                      Text('0.0000012626 cadenas'),
                      Text('0.0000833333 pies'),
                      Text('0.0000254 metros'),
                      Text('0.000254 decimetros'),
                      Text('2.539999999e-8 kilometros'),
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
