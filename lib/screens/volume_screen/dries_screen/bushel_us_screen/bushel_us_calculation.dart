import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class BushelUSToMetric extends StatefulWidget {
  final String bushelUS;
  const BushelUSToMetric({Key? key, required this.bushelUS}) : super(key: key);

  @override
  _BushelUSToMetricState createState() => _BushelUSToMetricState();
}

class _BushelUSToMetricState extends State<BushelUSToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.bushelUS;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 35239070.4).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 35239.0704).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.0352390704).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 35.2390704).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 3.52390704e-11).toStringAsFixed(20));

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
