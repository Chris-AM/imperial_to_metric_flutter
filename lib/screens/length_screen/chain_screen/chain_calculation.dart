import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class ChainToMetric extends StatefulWidget {
  final String chain;
  const ChainToMetric({Key? key, required this.chain}) : super(key: key);

  @override
  _ChainToMetricState createState() => _ChainToMetricState();
}

class _ChainToMetricState extends State<ChainToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.chain;
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 2011.68).toStringAsFixed(3));
    double dmResult =
        double.parse((convertedInput * 201.168).toStringAsFixed(3));
    double mResult =
        double.parse((convertedInput * 20.1168).toStringAsFixed(3));
    double kmResult =
        double.parse((convertedInput * 0.0201168).toStringAsFixed(5));

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
