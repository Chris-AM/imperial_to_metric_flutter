import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class SquareYardToMetric extends StatefulWidget {
  final String squareYard;
  const SquareYardToMetric({Key? key, required this.squareYard})
      : super(key: key);

  @override
  _SquareYardToMetricState createState() => _SquareYardToMetricState();
}

class _SquareYardToMetricState extends State<SquareYardToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.squareYard;
    var convertedInput = double.parse(inputOption);
    double cmSqr =
        double.parse((convertedInput * 8361.2736).toStringAsFixed(5));
    double dmSqr =
        double.parse((convertedInput * 83.612736).toStringAsFixed(5));
    double mSqr =
        double.parse((convertedInput * 0.83612736).toStringAsFixed(5));
    double kmSqr =
        double.parse((convertedInput * 8.361273599e-7).toStringAsFixed(10));

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
