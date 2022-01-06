import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/surface.screen/surface.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class SurfaceScreen extends StatefulWidget {
  const SurfaceScreen({Key? key}) : super(key: key);

  @override
  State<SurfaceScreen> createState() => _SurfaceScreenState();
}

class _SurfaceScreenState extends State<SurfaceScreen> {
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
                "Pulgadaˆ2",
                "Pieˆ2",
                "Yardaˆ2",
                "Rodˆ2",
                "Rood",
                "Acre",
                "Homestead",
                "Millaˆ2",
                "Leguaˆ2",
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
            inputValue: _inputValue,
          ),
        ],
      ),
    );
  }
}

class RenderOption extends StatelessWidget {
  final String option;
  final String inputValue;
  const RenderOption({Key? key, required this.option, required this.inputValue})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    switch (option) {
      case 'Pulgadaˆ2':
      // return GrainScreen(grainIput: inputValue);
      case 'Pieˆ2':
      // return LongTonScreen(longTonInput: inputValue);
      case 'Yardaˆ2':
      // return ShortTonScreen(shortTonInput: inputValue);
      case 'Rodˆ2':
      // return OunceScreen(ounceInput: inputValue);
      case 'Rood':
      // return PoundScreen(poundInput: inputValue);
      case 'Acre':
        return AcreScreen(acreInput: inputValue);
      case 'Homestead':
      // return ShortQuarterScreen(shortQuarterInput: inputValue);
      case 'Millaˆ2':
      // return KilopoundScreen(kilopoundInput: inputValue);
      case 'Leguaˆ2':
      // return QuintalScreen(quintalInput: inputValue);
      default:
        return const Text('Elige una opción');
    }
  }
}
