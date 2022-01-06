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
    double cmSqr =
        double.parse((convertedInput * 40468564.224).toStringAsFixed(5));
    double dmSqr =
        double.parse((convertedInput * 404685.64224).toStringAsFixed(5));
    double mSqr =
        double.parse((convertedInput * 4046.8564224).toStringAsFixed(5));
    double kmSqr =
        double.parse((convertedInput * 0.0040468564).toStringAsFixed(10));

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
