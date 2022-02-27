import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class BushelUKToMetric extends StatefulWidget {
  final String bushelUK;
  const BushelUKToMetric({Key? key, required this.bushelUK}) : super(key: key);

  @override
  _BushelUKToMetricState createState() => _BushelUKToMetricState();
}

class _BushelUKToMetricState extends State<BushelUKToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.bushelUK;
    var convertedInput = double.parse(inputOption);
    double mmCb = double.parse((convertedInput * 36368720).toStringAsFixed(5));
    double cmCb = double.parse((convertedInput * 36368.72).toStringAsFixed(5));
    double mCb = double.parse((convertedInput * 0.03636872).toStringAsFixed(5));
    double litre = double.parse((convertedInput * 36.36872).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 3.636872e-11).toStringAsFixed(10));

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
