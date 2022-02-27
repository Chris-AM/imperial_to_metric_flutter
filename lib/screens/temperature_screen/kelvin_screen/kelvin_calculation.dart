import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class KelvinToMetric extends StatefulWidget {
  final String kelvin;
  const KelvinToMetric({Key? key, required this.kelvin}) : super(key: key);

  @override
  _KelvinToMetricState createState() => _KelvinToMetricState();
}

class _KelvinToMetricState extends State<KelvinToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.kelvin;
    var convertedInput = double.parse(inputOption);
    double celcius = double.parse((convertedInput - 273.15).toStringAsFixed(5));

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
