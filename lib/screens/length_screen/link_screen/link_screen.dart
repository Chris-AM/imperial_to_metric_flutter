import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/length_screen/link_screen/link_calculator.dart';

class LinkScreen extends StatelessWidget {
  final String linkInput;
  const LinkScreen({Key? key, required this.linkInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Links'),
          LinkToMetric(link: linkInput),
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
                      Text('0.0000416667 leguas'),
                      Text('0.000125 millas'),
                      Text('0.22 yardas'),
                      Text('0.66 pies'),
                      Text('0.201168 metros'),
                      Text('2.01168 decimetros'),
                      Text('0.000201168 kilometros'),
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
