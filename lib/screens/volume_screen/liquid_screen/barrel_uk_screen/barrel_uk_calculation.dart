import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class BarrelUKToMetric extends StatefulWidget {
  final String barrelUK;
  const BarrelUKToMetric({Key? key, required this.barrelUK}) : super(key: key);

  @override
  _BarrelUKToMetricState createState() => _BarrelUKToMetricState();
}

class _BarrelUKToMetricState extends State<BarrelUKToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.barrelUK;
    var convertedInput = double.parse(inputOption);
    double mmCb = double.parse((convertedInput * 163659240).toStringAsFixed(5));
    double cmCb = double.parse((convertedInput * 163659.24).toStringAsFixed(5));
    double mCb = double.parse((convertedInput * 0.16365924).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 163.65924).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 1.636592399e-10).toStringAsFixed(20));

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
