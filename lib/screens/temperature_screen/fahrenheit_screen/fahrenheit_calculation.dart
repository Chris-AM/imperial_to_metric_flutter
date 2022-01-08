import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class FahrenheitToMetric extends StatefulWidget {
  final String fahrenheit;
  const FahrenheitToMetric({Key? key, required this.fahrenheit})
      : super(key: key);

  @override
  _FahrenheitToMetricState createState() => _FahrenheitToMetricState();
}

class _FahrenheitToMetricState extends State<FahrenheitToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.fahrenheit;
    var convertedInput = double.parse(inputOption);
    double celcius =
        double.parse(((5 / 9) * (convertedInput - 32)).toStringAsFixed(5));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$celcius \u2103'),
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
