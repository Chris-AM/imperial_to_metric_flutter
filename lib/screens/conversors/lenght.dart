import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class LenghtScreen extends StatefulWidget {
  const LenghtScreen({Key? key}) : super(key: key);

  @override
  State<LenghtScreen> createState() => _LenghtScreenState();
}

class _LenghtScreenState extends State<LenghtScreen> {
  //* this variable holds the value of the selected DropdownButton
  String _currentOption = 'Elije una opción';
  String _inputValue = '';
  FocusNode _focusInput = FocusNode();
  @override
  Widget build(BuildContext context) {
    return KeyboardActions(
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
                        _inputValue = inputValue;
                      });
                      print('now I have as _inputValue ==> $inputValue');
                    },
                    validator: (inputValue) {
                      try {
                        if (inputValue == null)
                          return 'Este campo es requerido';
                        return double.parse(inputValue) > 0
                            ? null
                            : 'El valor debe ser mayor a 0';
                      } catch (e) {
                        return 'El valor debe ser un número';
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: _currentOption == 'Elije una opción'
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
                "mil",
                "pulgadas",
                "Pie",
                "Yarda",
                "Rood",
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
      case 'mil':
        return Container(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('Mil'),
              const Text('1 mil = 0.000254 pulgadas'),
              const Text('1 mil = 0.0000254 pie'),
              const Text('1 mil = 0.000621371 yarda'),
              const Text('1 mil = 0.000000621371 rood'),
              MilToMetric(mil: value)
            ],
          ),
        );
      case 'pulgadas':
        return Text('option ==> $option');
      case 'Pie':
        return Text('option ==> $option');
      case 'Yarda':
        return Text('option ==> $option');
      case 'Rood':
        return Text('option ==> $option');
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

//* Mils Convertor
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
    double dmResult =
        double.parse((convertedInput * 0.000254).toStringAsFixed(5));
    double mResult =
        double.parse((convertedInput * 0.0000254).toStringAsFixed(5));
    double kmResult =
        double.parse((convertedInput * 0.00000000254).toStringAsFixed(10));

    var alertDialog = AlertDialog(
      title: const Text('sus resultados'),
      content: Text('$cmResult cm\n$dmResult dm\n$mResult m\n$kmResult km'),
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
