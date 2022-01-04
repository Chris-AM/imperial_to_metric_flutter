import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/mile_screen/mile_calculation.dart';

class MileScreen extends StatelessWidget {
  final String mileInput;
  const MileScreen({Key? key, required this.mileInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Millas'),
          MileToMetric(mile: mileInput),
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
                      Text('0.3333333333 leguas'),
                      Text('63360 pulgadas'),
                      Text('1760 yardas'),
                      Text('5280 pies'),
                      Text('1609.344 metros'),
                      Text('16093.44 decimetros'),
                      Text('1.609344 kilometros'),
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
