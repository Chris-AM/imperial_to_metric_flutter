import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/screens/length_screen/furlong_screen/furlong_calculation.dart';

class FurlongScreen extends StatelessWidget {
  final String furlongInput;
  const FurlongScreen({Key? key, required this.furlongInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Furlong'),
          FurlongToMetric(furlong: furlongInput),
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
                      Text('0.0416665833 leguas'),
                      Text('0.12499975millas'),
                      Text('220 yardas'),
                      Text('660 pies'),
                      Text('201.168 metros'),
                      Text('2011.68 decimetros'),
                      Text('0.201168 kilometros'),
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
