import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/length_screen/inch_screen/inch_calculation.dart';

class InchScreen extends StatelessWidget {
  final String inchesInput;
  const InchScreen({Key? key, required this.inchesInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Pulgadas'),
          InchesToMetric(inches: inchesInput),
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
                      Text('0.0000052609 leguas'),
                      Text('0.0000157828 millas'),
                      Text('0.0277777778 yardas'),
                      Text('0.0833333333 pies'),
                      Text('0.0254 metros'),
                      Text('0.254 decimetros'),
                      Text('0.0000254 kilometros'),
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
