import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class AcreFootToMetric extends StatefulWidget {
  final String acreFoot;
  const AcreFootToMetric({Key? key, required this.acreFoot}) : super(key: key);

  @override
  _AcreFootToMetricState createState() => _AcreFootToMetricState();
}

class _AcreFootToMetricState extends State<AcreFootToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.acreFoot;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 1233481837548).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 1233481837.548).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 1233.481837548).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 1233481.837548).toStringAsFixed(5));
    double kmCb = double.parse(
        (convertedInput * 0.000001233481837548).toStringAsFixed(10));

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
