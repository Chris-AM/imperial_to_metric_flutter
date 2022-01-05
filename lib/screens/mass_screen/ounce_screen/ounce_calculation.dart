import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class OunceToMetric extends StatefulWidget {
  final String ounce;
  const OunceToMetric({Key? key, required this.ounce}) : super(key: key);

  @override
  _OunceToMetricState createState() => _OunceToMetricState();
}

class _OunceToMetricState extends State<OunceToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.ounce;
    var convertedInput = double.parse(inputOption);
    double mgResult =
        double.parse((convertedInput * 28349.523125).toStringAsFixed(5));
    double gResult =
        double.parse((convertedInput * 28.349523125).toStringAsFixed(5));
    double kgResult =
        double.parse((convertedInput * 0.0283495231).toStringAsFixed(10));

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
