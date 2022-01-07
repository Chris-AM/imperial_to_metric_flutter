import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/helpers/error_dialog.dart';

class AcreToMetric extends StatefulWidget {
  final String acre;
  const AcreToMetric({Key? key, required this.acre}) : super(key: key);

  @override
  _AcreToMetricState createState() => _AcreToMetricState();
}

class _AcreToMetricState extends State<AcreToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.acre;
    var convertedInput = double.parse(inputOption);
    double mmCb = double.parse((convertedInput * 0).toStringAsFixed(5));
    double cmCb = double.parse((convertedInput * 0).toStringAsFixed(5));
    double mCb = double.parse((convertedInput * 0).toStringAsFixed(5));
    double litre = double.parse((convertedInput * 0).toStringAsFixed(5));
    double kmCb = double.parse((convertedInput * 0).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$mmCb mmˆ3\n$cmCb dmˆ3\n$mCb mˆ3\n$litre litros\n$kmCb kmˆ3'),
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
