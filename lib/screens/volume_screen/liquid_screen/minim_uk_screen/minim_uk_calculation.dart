import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class MinimUKToMetric extends StatefulWidget {
  final String minimUK;
  const MinimUKToMetric({Key? key, required this.minimUK}) : super(key: key);

  @override
  _MinimUKToMetricState createState() => _MinimUKToMetricState();
}

class _MinimUKToMetricState extends State<MinimUKToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.minimUK;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 59.193880208).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 0.0591938802).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 5.91938802e-8).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 0.0000591939).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 5.91938802e-17).toStringAsFixed(20));

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
