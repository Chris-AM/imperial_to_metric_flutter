import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/surface.screen/acre_screen/acre_calculation.dart';

class AcreScreen extends StatelessWidget {
  final String acreInput;
  const AcreScreen({Key? key, required this.acreInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Acre'),
          AcreToMetric(acre: acreInput),
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
                      Text('0.0015625 Millasˆ2'),
                      Text('4840 Yardasˆ2'),
                      Text('43560 Piesˆ2'),
                      Text('6272640 Pulgadasˆ2'),
                      Text('4 Rood')
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
