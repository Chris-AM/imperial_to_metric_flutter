import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/length_screen/league.screen/league_calculation.dart';

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
        ],
      ),
    );
  }
}
