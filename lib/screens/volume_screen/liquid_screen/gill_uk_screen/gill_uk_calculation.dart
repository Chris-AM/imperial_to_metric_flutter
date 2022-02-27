import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class GillUKToMetric extends StatefulWidget {
  final String gillUK;
  const GillUKToMetric({Key? key, required this.gillUK}) : super(key: key);

  @override
  _GillUKToMetricState createState() => _GillUKToMetricState();
}

class _GillUKToMetricState extends State<GillUKToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.gillUK;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 946352.946).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 946.352946).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0009463529).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 0.946352946).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 9.463529459e-13).toStringAsFixed(20));

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
