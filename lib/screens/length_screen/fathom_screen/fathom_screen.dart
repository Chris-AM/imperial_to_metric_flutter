import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/length_screen/fathom_screen/fathom_calculator.dart';

class FathomScreen extends StatelessWidget {
  final String fathomInput;
  const FathomScreen({Key? key, required this.fathomInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Brazas (US)'),
          FathomToMetric(fathom: fathomInput),
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
                      Text('0.0003787879 leguas'),
                      Text('0.0011363636 millas'),
                      Text('2.000004 yardas'),
                      Text('6.000012 pies'),
                      Text('1.8288036576 metros'),
                      Text('18.288036576 decimetros'),
                      Text('0.0018288037 kilometros'),
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
