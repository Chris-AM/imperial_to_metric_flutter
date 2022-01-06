import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/surface.screen/square_leagues_screen/square_league_calculation.dart';

class SquareLeagueScreen extends StatelessWidget {
  final String squareLeagueInput;
  const SquareLeagueScreen({Key? key, required this.squareLeagueInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Text('Acre'),
          SquareLeagueToMetric(
            squareLeague: squareLeagueInput,
          ),
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
                      Text('11.9186 Millasˆ2'),
                      Text('36919055.3602393 Yardasˆ2'),
                      Text('332271498.24215364456 Piesˆ2'),
                      Text('7627.93 Acre'),
                      Text('47,674341312741 Homestead')
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
