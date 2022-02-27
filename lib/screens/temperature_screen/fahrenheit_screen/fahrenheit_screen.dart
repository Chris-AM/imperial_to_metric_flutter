import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/temperature_screen/fahrenheit_screen/fahrenheit_calculation.dart';

class FahrenheitScreen extends StatelessWidget {
  final String fahrenheitInput;
  const FahrenheitScreen({Key? key, required this.fahrenheitInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Fahrenheit'),
          FahrenheitToMetric(fahrenheit: fahrenheitInput),
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
                      Text('255.92777778 Kelvin'),
                      Text('0.9369152796 Triple punto del agua'),
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
