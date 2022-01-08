import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class GillUSToMetric extends StatefulWidget {
  final String gillUS;
  const GillUSToMetric({Key? key, required this.gillUS}) : super(key: key);

  @override
  _GillUSToMetricState createState() => _GillUSToMetricState();
}

class _GillUSToMetricState extends State<GillUSToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.gillUS;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 118294.11825).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 118.29411825).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0001182941).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 0.1182941182).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 1.182941182e-13).toStringAsFixed(20));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content:
          Text('$mmCb mmˆ3\n$cmCb cmˆ3\n$mCb mˆ3\n$litre litros\n$kmCb kmˆ3'),
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
