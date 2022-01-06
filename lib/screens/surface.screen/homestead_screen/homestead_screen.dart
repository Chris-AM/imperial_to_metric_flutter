import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/surface.screen/homestead_screen/homestead_calculation.dart';

class HomesteadScreen extends StatelessWidget {
  final String homeSteadInput;
  const HomesteadScreen({Key? key, required this.homeSteadInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Homestead'),
          HomesteadToMetric(homestead: homeSteadInput),
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
                      Text('0.25 Millasˆ2'),
                      Text('774400 Yardasˆ2'),
                      Text('6969600 Piesˆ2'),
                      Text('1003622400 Pulgadasˆ2'),
                      Text('640 Rood')
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
