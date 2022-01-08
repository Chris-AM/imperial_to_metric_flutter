import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/dries_screen/quart_uk_screen/quart_uk_calculation.dart';

class QuartUKScreen extends StatelessWidget {
  final String quartUKInput;
  const QuartUKScreen({Key? key, required this.quartUKInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cuarto (UK)'),
          QuartUKToMetric(quartUk: quartUKInput),
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
                      Text('0.03125 Bushel (UK)'),
                      Text('0.032251773020664 Bushel (US)'),
                      Text('0.3002374814 Galón'),
                      Text('1.2009499255 Cuarto (US)'),
                      
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
