import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class LiquidDramToMetric extends StatefulWidget {
  final String liquidDram;
  const LiquidDramToMetric({Key? key, required this.liquidDram})
      : super(key: key);

  @override
  _LiquidDramToMetricState createState() => _LiquidDramToMetricState();
}

class _LiquidDramToMetricState extends State<LiquidDramToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.liquidDram;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 3696.6911953).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 3.6966911953).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0000036967).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 0.0036966912).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 3.696691195e-15).toStringAsFixed(20));

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
