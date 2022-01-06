import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class RoodToMetric extends StatefulWidget {
  final String rood;
  const RoodToMetric({Key? key, required this.rood}) : super(key: key);

  @override
  _RoodToMetricState createState() => _RoodToMetricState();
}

class _RoodToMetricState extends State<RoodToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.rood;
    var convertedInput = double.parse(inputOption);
    double cmSqr =
        double.parse((convertedInput * 10117141.056).toStringAsFixed(5));
    double dmSqr =
        double.parse((convertedInput * 101171.41056).toStringAsFixed(5));
    double mSqr =
        double.parse((convertedInput * 1011.7141056).toStringAsFixed(5));
    double kmSqr =
        double.parse((convertedInput * 0.0010117141).toStringAsFixed(10));

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
