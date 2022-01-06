import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class QuintalToMetric extends StatefulWidget {
  final String quintal;
  const QuintalToMetric({Key? key, required this.quintal}) : super(key: key);

  @override
  _QuintalToMetricState createState() => _QuintalToMetricState();
}

class _QuintalToMetricState extends State<QuintalToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.quintal;
    var convertedInput = double.parse(inputOption);
    double mgResult =
        double.parse((convertedInput * 100000000).toStringAsFixed(5));
    double gResult = double.parse((convertedInput * 100000).toStringAsFixed(5));
    double kgResult = double.parse((convertedInput * 100).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$mgResult mg\n$gResult g\n$kgResult kg'),
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
