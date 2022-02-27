import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/mass_screen/short_quarter_screen/short_quarter_calculation.dart';

class ShortQuarterScreen extends StatelessWidget {
  final String shortQuarterInput;
  const ShortQuarterScreen({Key? key, required this.shortQuarterInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cuarto Corto (US)'),
          ShortQuarterToMetric(shortQuarter: shortQuarterInput),
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
                      Text('0.8928571429 Cuarto Largo (UK)'),
                      Text('0.025 Kilo Libras'),
                      Text('25 Libras'),
                      Text('400 Onzas'),
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
