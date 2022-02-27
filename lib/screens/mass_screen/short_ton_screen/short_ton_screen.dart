import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/mass_screen/short_ton_screen/short_ton_calculation.dart';

class ShortTonScreen extends StatelessWidget {
  final String shortTonInput;
  const ShortTonScreen({Key? key, required this.shortTonInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Tonelada Corta (US)'),
          ShortTonToMetric(shortTon: shortTonInput),
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
                      Text('80 Quarter (US)'),
                      Text('71.428571429 Quarter (UK)'),
                      Text('2 Kilo Libras'),
                      Text('2000 Libras'),
                      Text('0.8928571429 Toneladas Largas'),
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
