import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class SquareRodToMetric extends StatefulWidget {
  final String squareRod;
  const SquareRodToMetric({Key? key, required this.squareRod}) : super(key: key);

  @override
  _SquareRodToMetricState createState() => _SquareRodToMetricState();
}

class _SquareRodToMetricState extends State<SquareRodToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.squareRod;
    var convertedInput = double.parse(inputOption);
    double cmSqr =
        double.parse((convertedInput * 252928.5264).toStringAsFixed(5));
    double dmSqr =
        double.parse((convertedInput * 2529.285264).toStringAsFixed(5));
    double mSqr =
        double.parse((convertedInput * 25.29285264).toStringAsFixed(5));
    double kmSqr =
        double.parse((convertedInput * 0.0000252929).toStringAsFixed(10));

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
