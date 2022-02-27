import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/length_screen/yard_screen/yard_calculation.dart';

class YardScreen extends StatelessWidget {
  final String yardInput;
  const YardScreen({Key? key, required this.yardInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Yarda'),
          YardToMetric(yard: yardInput),
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
                      Text('0.0001893939 leguas'),
                      Text('0.0005681818 millas'),
                      Text('36 pulgadas'),
                      Text('3 pies'),
                      Text('0.9144 metros'),
                      Text('9.144 decimetros'),
                      Text('0.0009144 kilometros'),
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
