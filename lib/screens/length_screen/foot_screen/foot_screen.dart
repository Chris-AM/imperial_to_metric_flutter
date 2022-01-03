import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/foot_screen/foot_calculation.dart';

class FootScreen extends StatelessWidget {
  final String footInput;
  const FootScreen({Key? key, required this.footInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Pie'),
          FeetToMetric(feet: footInput),
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
                      Text('0.0000631313 leguas'),
                      Text('0.0001893939 millas'),
                      Text('0.333334 yardas'),
                      Text('1.5151515152 links'),
                      Text('0.3048006096 metros'),
                      Text('3.048006096 decimetros'),
                      Text('0.0003048006 kilometros'),
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
