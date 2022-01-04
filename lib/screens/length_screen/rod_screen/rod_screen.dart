import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/rod_screen/rod_calculation.dart';

class RodScreen extends StatelessWidget {
  final String rodInput;
  const RodScreen({Key? key, required this.rodInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Rod'),
          RodToMetric(rod: rodInput),
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
                      Text('0.0010416667 leguas'),
                      Text('0.003125 millas'),
                      Text('5.5 yardas'),
                      Text('16.5 pies'),
                      Text('5.0292 metros'),
                      Text('50.292 decimetros'),
                      Text('0.0050292 kilometros'),
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
