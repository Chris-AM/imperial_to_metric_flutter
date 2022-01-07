import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class CubicInchesToMetric extends StatefulWidget {
  final String cubicInches;
  const CubicInchesToMetric({Key? key, required this.cubicInches})
      : super(key: key);

  @override
  _CubicInchesToMetricState createState() => _CubicInchesToMetricState();
}

class _CubicInchesToMetricState extends State<CubicInchesToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.cubicInches;
    var convertedInput = double.parse(inputOption);
    double mmCb = double.parse((convertedInput * 16387.064).toStringAsFixed(5));
    double cmCb = double.parse((convertedInput * 16.387064).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0000163871).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 0.016387064).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 1.6387064e-14).toStringAsFixed(15));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content:
          Text('$mmCb mmˆ3\n$cmCb dmˆ3\n$mCb mˆ3\n$litre litros\n$kmCb kmˆ3'),
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
