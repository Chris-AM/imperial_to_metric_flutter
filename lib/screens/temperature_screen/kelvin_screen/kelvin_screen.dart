import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/temperature_screen/kelvin_screen/kelvin_calculation.dart';

class KelvinScreen extends StatelessWidget {
  final String kelvinInput;
  const KelvinScreen({Key? key, required this.kelvinInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Kelvin'),
          KelvinToMetric(kelvin: kelvinInput),
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
                      Text('-457.87 Fahrenheit'),
                      Text('0.0036608581 Triple punto del agua'),
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
