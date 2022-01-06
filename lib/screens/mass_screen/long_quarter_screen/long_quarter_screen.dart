import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/mass_screen/long_quarter_screen/long_quarter_calculation.dart';

class LongQuarterScreen extends StatelessWidget {
  final String longQuarterInput;
  const LongQuarterScreen({Key? key, required this.longQuarterInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cuarto largo'),
          LongQuarterToMetric(longQuarter: longQuarterInput),
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
                      Text('1.12 Cuarto Corto (US)'),
                      Text('0.28 Kilo Libras'),
                      Text('28 Libras'),
                      Text('448 Onzas'),
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
