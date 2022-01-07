import 'package:flutter/material.dart';
import 'package:imperial_to_metric_flutter/screens/volume_screen/volume.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class VolumeScreen extends StatefulWidget {
  const VolumeScreen({Key? key}) : super(key: key);

  @override
  State<VolumeScreen> createState() => _VolumeScreenState();
}

class _VolumeScreenState extends State<VolumeScreen> {
  //* this variable holds the value of the selected DropdownButton
  String _currentOption = 'Elige una opción';
  String _inputValue = '';
  String _volumeType = 'Tipo de Volumen';
  bool _disabledDropdown = true;
  List<DropdownMenuItem<String>> menuItems = [];
  final solids = {
    '1': 'Pulgadaˆ3',
    '2': 'Pieˆ3',
    '3': 'Yardaˆ3',
    '4': 'Acre-Pie',
    '5': 'Millaˆ3',
  };
  final dries = {
    '1': 'Pinta',
    '2': 'Cuarto (US)',
    '3': 'Cuarto (UK)',
    '5': 'Galón',
    '6': 'Peck (US)',
    '7': 'Peck (UK)',
    '8': 'Bushel (US)',
    '9': 'Bushel (UK) ',
  };
  final liquids = {
    '1': 'Minim (US)',
    '2': 'Minim (UK)',
    '3': 'Dracma Líquido',
    '4': 'Onza Líquida (US)',
    '5': 'Onza Líquida (UK)',
    '6': 'Gill (US)',
    '7': 'Gill (UK)',
    '8': 'Barril (US)',
    '9': 'Barril (UK)',
    '10': 'Barril (Petroleo)',
  };

  void populateSolids() {
    for (String key in solids.keys) {
      menuItems.add(DropdownMenuItem<String>(
        value: solids[key],
        child: Center(
          child: Text(solids[key]!),
        ),
      ));
    }
  }

  void populateDries() {
    for (String key in dries.keys) {
      menuItems.add(DropdownMenuItem<String>(
        value: dries[key],
        child: Center(
          child: Text(dries[key]!),
        ),
      ));
    }
  }

  void populateLiquids() {
    for (String key in liquids.keys) {
      menuItems.add(DropdownMenuItem<String>(
        value: liquids[key],
        child: Center(
          child: Text(liquids[key]!),
        ),
      ));
    }
  }

  void valueChanged(_value) {
    if (_value == "Solidos") {
      menuItems = [];
      populateSolids();
    } else if (_value == "Secos") {
      menuItems = [];
      populateDries();
    } else if (_value == "Liquidos") {
      menuItems = [];
      populateLiquids();
    }
    setState(() {
      _volumeType = _value;
      _disabledDropdown = false;
    });
  }

  void secondValueChanged(_value) {
    setState(() {
      _currentOption = _value;
    });
  }

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
                          ? 'Primero elige el tipo de volumen'
                          : 'Ingresa el valor en $_currentOption',
                    ),
                  ),
                ],
              ),
            ),
          ),

          //* Creating Dropdown
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: DropdownButton<String>(
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Solidos',
                        child: Center(
                          child: Text('Solidos'),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Secos',
                        child: Center(
                          child: Text('Secos'),
                        ),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Liquidos',
                        child: Center(
                          child: Text('Liquidos (US)'),
                        ),
                      ),
                    ],
                    onChanged: (_value) => valueChanged(_value),
                    hint: Text(_volumeType),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: DropdownButton<String>(
                    items: menuItems,
                    onChanged: _disabledDropdown
                        ? null
                        : (_value) => secondValueChanged(_value),
                    hint: Text(_currentOption),
                    disabledHint: const Text('Elija un tipo de volumen'),
                  ),
                ),
              ],
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
      //solids
      case 'Pulgadaˆ3':
        return CubicInchesScreen(cubicInchesInput: inputValue);
      case 'Pieˆ3':
        return CubicFootScreen(cubicFootInput: inputValue);
      case 'Yardaˆ3':
      // return SquareYardScreen(squareYardInput: inputValue);
      case 'Acre-Pie':
        return AcreFootScreen(acreFootInput: inputValue);
      case 'Rood':
      // return RoodScreen(roodInput: inputValue);
      case 'Acre':
      // return AcreScreen(acreInput: inputValue);
      case 'Homestead':
      // return HomesteadScreen(homeSteadInput: inputValue);
      case 'Millaˆ2':
      // return SquareMileScreen(squareMileInput: inputValue);
      case 'Leguaˆ2':
      // return SquareLeagueScreen(squareLeagueInput: inputValue);
      default:
        return const Text('Elige una opción');
    }
  }
}
