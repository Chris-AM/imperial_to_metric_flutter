import 'package:flutter/material.dart';
import 'package:calculadora_imp_met/helpers/error_dialog.dart';

class BarrelOilToMetric extends StatefulWidget {
  final String barrelOil;
  const BarrelOilToMetric({Key? key, required this.barrelOil})
      : super(key: key);

  @override
  _BarrelOilToMetricState createState() => _BarrelOilToMetricState();
}

class _BarrelOilToMetricState extends State<BarrelOilToMetric> {
  //* Converion Logic
  void _convertion(BuildContext context) {
    var inputOption = widget.barrelOil;
    var convertedInput = double.parse(inputOption);
    double mmCb =
        double.parse((convertedInput * 158987294.93).toStringAsFixed(5));
    double cmCb =
        double.parse((convertedInput * 158987.29493).toStringAsFixed(5));
    double mCb =
        double.parse((convertedInput * 0.1589872949).toStringAsFixed(5));
    double litre =
        double.parse((convertedInput * 158.98729493).toStringAsFixed(5));
    double kmCb =
        double.parse((convertedInput * 1.589872949e-10).toStringAsFixed(20));

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
