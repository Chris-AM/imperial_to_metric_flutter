import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/length_screen/chain_screen/chain_calculation.dart';

class ChainScreen extends StatelessWidget {
  final String chainInput;
  const ChainScreen({Key? key, required this.chainInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Cadenas'),
          ChainToMetric(chain: chainInput),
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
                      Text('0,004166666666666 leguas'),
                      Text('0,0125 millas'),
                      Text('22 yardas'),
                      Text('66 pies'),
                      Text('20.1168 metros'),
                      Text('201.168 decimetros'),
                      Text('0.0201168 kilometros'),
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
