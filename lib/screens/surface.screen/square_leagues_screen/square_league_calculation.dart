import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class SquareLeagueToMetric extends StatefulWidget {
  final String squareLeague;
  const SquareLeagueToMetric({Key? key, required this.squareLeague})
      : super(key: key);

  @override
  _SquareLeagueToMetricState createState() => _SquareLeagueToMetricState();
}

class _SquareLeagueToMetricState extends State<SquareLeagueToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.squareLeague;
    var convertedInput = double.parse(inputOption);
    double cmSqr =
        double.parse((convertedInput * 0.0000000000308691).toStringAsFixed(15));
    double dmSqr =
        double.parse((convertedInput * 0.00000000308691).toStringAsFixed(15));
    double mSqr =
        double.parse((convertedInput * 0.000000308691).toStringAsFixed(15));
    double kmSqr = double.parse((convertedInput * 30.8691).toStringAsFixed(20));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmSqr cmˆ2\n$dmSqr dmˆ2\n$mSqr mˆ2\n$kmSqr kmˆ2'),
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

  void _badAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const ErrorDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          try {
            _convertion(context);
          } catch (e) {
            _badAlertDialog(context);
          }
        },
        child: const Text('Calcular'),
      ),
    );
  }
}
