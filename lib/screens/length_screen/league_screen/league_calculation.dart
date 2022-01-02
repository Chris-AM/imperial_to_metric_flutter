import 'package:flutter/material.dart';

//* League to metric

class LeagueToMetric extends StatefulWidget {
  final String league;
  const LeagueToMetric({Key? key, required this.league}) : super(key: key);

  @override
  _LeagueToMetricState createState() => _LeagueToMetricState();
}

class _LeagueToMetricState extends State<LeagueToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.league;
    var convertedInput = double.parse(inputOption);
    double cmResult = double.parse((convertedInput * 482803).toStringAsFixed(5));
    double dmResult = double.parse((convertedInput * 48280.3).toStringAsFixed(5));
    double mResult = double.parse((convertedInput * 4828.03).toStringAsFixed(5));
    double kmResult = double.parse((convertedInput * 4.82803).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$dmResult dm\n$mResult m\n$kmResult km'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cerrar'),
        )
      ],
    );

    showDialog(
      context: context,
      builder: (context) {
        return alertDialog;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}
