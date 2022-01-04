import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/league_screen/league_calculation.dart';

class LeagueScreen extends StatelessWidget {
  final String leagueInput;
  const LeagueScreen({Key? key, required this.leagueInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Leaguas'),
          LeagueToMetric(league: leagueInput),
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
                      Text('190080 pulgadas'),
                      Text('3 millas'),
                      Text('5280 yardas'),
                      Text('15840 pies'),
                      Text('4828.032 metros'),
                      Text('48280.32 decimetros'),
                      Text('4.828032 kilometros'),
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
