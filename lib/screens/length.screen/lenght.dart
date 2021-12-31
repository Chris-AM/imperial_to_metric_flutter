import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class LenghtScreen extends StatefulWidget {
  const LenghtScreen({Key? key}) : super(key: key);

  @override
  State<LenghtScreen> createState() => _LenghtScreenState();
}

class _LenghtScreenState extends State<LenghtScreen> {
  //* this variable holds the value of the selected DropdownButton
  String _currentOption = 'Elige una opción';
  String _inputValue = '';
  final FocusNode _focusInput = FocusNode();
  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
      tapOutsideBehavior: TapOutsideBehavior.opaqueDismiss,
      config: KeyboardActionsConfig(
        keyboardActionsPlatform: KeyboardActionsPlatform.IOS,
        nextFocus: false,
        actions: [
          KeyboardActionsItem(
            focusNode: _focusInput,
          ),
        ],
      ),
      child: Column(
        children: [
          //*Input Field container
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                children: [
                  //* Input field
                  TextFormField(
                    focusNode: _focusInput,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    onChanged: (inputValue) {
                      setState(() {
                        _inputValue = (inputValue).replaceAll(',', '.');
                      });
                      print('now I have as _inputValue ==> $inputValue');
                    },
                    validator: (inputValue) {
                      try {
                        if (inputValue == null) {
                          return 'Este campo es requerido';
                        }
                        return double.parse(inputValue) > 0
                            ? null
                            : 'El valor debe ser mayor a 0';
                      } catch (e) {
                        return 'El valor debe ser un número';
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: _currentOption == 'Elige una opción'
                          ? 'Selecciona una opción de la lista'
                          : 'Ingresa el valor en $_currentOption',
                    ),
                  ),
                ],
              ),
            ),
          ),

          //* Creating Dropdown
          Center(
            child: DropdownButton(
              hint: Text(_currentOption),
              //* List of items to convert
              items: <String>[
                "Mil",
                "Pulgadas",
                "Pie",
                "Yarda",
                "Rod",
                "Cadena",
                "Furlong",
                "Milla",
                "Legua",
                "Link",
                "Braza",
              ].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _currentOption = newValue!;
                });
              },
            ),
          ),
          RenderOption(
            option: _currentOption,
            value: _inputValue,
          ),
        ],
      ),
    );
  }
}

class RenderOption extends StatelessWidget {
  final String option;
  final String value;
  const RenderOption({Key? key, required this.option, required this.value})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    switch (option) {
      case 'Mil':
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Mil'),
              MilToMetric(mil: value),
            ],
          ),
        );

      case 'Pulgadas':
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Pulgadas'),
              InchesToMetric(inches: value),
            ],
          ),
        );
      case 'Pie':
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Pie'),
              FeetToMetric(feet: value),
            ],
          ),
        );
      case 'Yarda':
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Yarda'),
              YardToMetric(yard: value),
            ],
          ),
        );
      case 'Rod':
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Rod'),
              RodToMetric(rod: value),
            ],
          ),
        );
      case 'Cadena':
        return Text('option ==> $option');
      case 'Furlong':
        return Text('option ==> $option');
      case 'Milla':
        return Text('option ==> $option');
      case 'Legua':
        return Text('option ==> $option');
      case 'Link':
        return Text('option ==> $option');
      case 'Braza':
        return Text('option ==> $option');
      default:
        return const Text('Elige una opción');
    }
  }
}

//* Mils to metric
class MilToMetric extends StatefulWidget {
  final String mil;

  const MilToMetric({Key? key, required this.mil}) : super(key: key);

  @override
  State<MilToMetric> createState() => _MilToMetricState();
}

class _MilToMetricState extends State<MilToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.mil;
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 0.00254).toStringAsFixed(5));
    double mResult =
        double.parse((convertedInput * 0.0000254).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 0.000254).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.00000000254).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}

//* inches to metric

class InchesToMetric extends StatefulWidget {
  final String inches;
  const InchesToMetric({Key? key, required this.inches}) : super(key: key);

  @override
  _InchesToMetricState createState() => _InchesToMetricState();
}

class _InchesToMetricState extends State<InchesToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.inches;
    var convertedInput = double.parse(inputOption);
    double cmResult = double.parse((convertedInput * 2.54).toStringAsFixed(5));
    double mResult = double.parse((convertedInput * 0.0254).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 0.00254).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.0000254).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}

//* Feet to metric
class FeetToMetric extends StatefulWidget {
  final String feet;
  const FeetToMetric({Key? key, required this.feet}) : super(key: key);

  @override
  _FeetToMetricState createState() => _FeetToMetricState();
}

class _FeetToMetricState extends State<FeetToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.feet;
    var convertedInput = double.parse(inputOption);
    double cmResult = double.parse((convertedInput * 30.48).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 0.03048).toStringAsFixed(5));
    double mResult = double.parse((convertedInput * 0.3048).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.0003048).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}

//* Yard to metric
class YardToMetric extends StatefulWidget {
  final String yard;
  const YardToMetric({Key? key, required this.yard}) : super(key: key);

  @override
  _YardToMetricState createState() => _YardToMetricState();
}

class _YardToMetricState extends State<YardToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = widget.yard;
    var convertedInput = double.parse(inputOption);
    double cmResult = double.parse((convertedInput * 91.44).toStringAsFixed(5));
    double dmResult =
        double.parse((convertedInput * 0.09144).toStringAsFixed(5));
    double mResult = double.parse((convertedInput * 0.9144).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.0009144).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}

//* Rod to metric
class RodToMetric extends StatefulWidget {
  final String rod;
  const RodToMetric({Key? key, required this.rod}) : super(key: key);

  @override
  _RodToMetricState createState() => _RodToMetricState();
}

class _RodToMetricState extends State<RodToMetric> {
  void _convertion(BuildContext context) {
    var inputOption = (widget.rod).replaceAll(',', '.');
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 502.92).toStringAsFixed(3));
    double dmResult =
        double.parse((convertedInput * 0.50292).toStringAsFixed(3));
    double mResult = double.parse((convertedInput * 5.0292).toStringAsFixed(3));
    double kmResult =
        double.parse((convertedInput * 0.0050292).toStringAsFixed(3));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}

//* Chain to metric
class ChainToMetric extends StatefulWidget {
  String chain;
 ChainToMetric({Key? key, required this.chain}) : super(key: key);

  @override
  _ChainToMetricState createState() => _ChainToMetricState();
}

class _ChainToMetricState extends State<ChainToMetric> {
 void _convertion(BuildContext context) {
    var inputOption = (widget.chain).replaceAll(',', '.');
    var convertedInput = double.parse(inputOption);
    double cmResult =
        double.parse((convertedInput * 502.92).toStringAsFixed(3));
    double dmResult =
        double.parse((convertedInput * 0.50292).toStringAsFixed(3));
    double mResult = double.parse((convertedInput * 5.0292).toStringAsFixed(3));
    double kmResult =
        double.parse((convertedInput * 0.0050292).toStringAsFixed(3));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$mResult m\n$dmResult dm\n$kmResult km'),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ElevatedButton(
        onPressed: () {
          _convertion(context);
        },
        child: const Text('Calcular'),
      ),
    );
  }
}

//* Furlong to metric
class FurlongToMetric extends StatefulWidget {
  String furlong;
  FurlongToMetric({Key? key, required this.furlong}) : super(key: key);

  @override
  _FurlongToMetricState createState() => _FurlongToMetricState();
}

class _FurlongToMetricState extends State<FurlongToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//* Mile to metric
class MileToMetric extends StatefulWidget {
  const MileToMetric({Key? key}) : super(key: key);

  @override
  _MileToMetricState createState() => _MileToMetricState();
}

class _MileToMetricState extends State<MileToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//* League to metric
class LeagueToMetric extends StatefulWidget {
  const LeagueToMetric({Key? key}) : super(key: key);

  @override
  _LeagueToMetricState createState() => _LeagueToMetricState();
}

class _LeagueToMetricState extends State<LeagueToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//* Link to metric
class LinkToMetric extends StatefulWidget {
  const LinkToMetric({Key? key}) : super(key: key);

  @override
  _LinkToMetricState createState() => _LinkToMetricState();
}

class _LinkToMetricState extends State<LinkToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

//* Fathom to metric
class FathomToMetric extends StatefulWidget {
  const FathomToMetric({Key? key}) : super(key: key);

  @override
  _FathomToMetricState createState() => _FathomToMetricState();
}

class _FathomToMetricState extends State<FathomToMetric> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
