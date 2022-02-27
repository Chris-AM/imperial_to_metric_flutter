import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class HomesteadToMetric extends StatefulWidget {
  final String homestead;
  const HomesteadToMetric({Key? key, required this.homestead})
      : super(key: key);

  @override
  _HomesteadToMetricState createState() => _HomesteadToMetricState();
}

class _HomesteadToMetricState extends State<HomesteadToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.homestead;
    var convertedInput = double.parse(inputOption);
    double cmSqr =
        double.parse((convertedInput * 6474970275.8).toStringAsFixed(5));
    double dmSqr =
        double.parse((convertedInput * 64749702.758).toStringAsFixed(5));
    double mSqr =
        double.parse((convertedInput * 647497.02758).toStringAsFixed(5));
    double kmSqr =
        double.parse((convertedInput * 0.6474970276).toStringAsFixed(10));

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
