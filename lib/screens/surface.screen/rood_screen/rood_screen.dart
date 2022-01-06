import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/surface.screen/rood_screen/rood_calculation.dart';

class RoodScreen extends StatelessWidget {
  final String roodInput;
  const RoodScreen({Key? key, required this.roodInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Acre'),
          RoodToMetric(rood: roodInput),
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
                      Text('0.000390625 Millasˆ2'),
                      Text('1210 Yardasˆ2'),
                      Text('10890 Piesˆ2'),
                      Text('6272640 Pulgadasˆ2'),
                      Text('1568160 Rood')
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
