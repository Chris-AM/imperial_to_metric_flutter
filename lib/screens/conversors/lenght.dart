import 'package:flutter/material.dart';

class LenghtScreen extends StatefulWidget {
  const LenghtScreen({Key? key}) : super(key: key);

  @override
  State<LenghtScreen> createState() => _LenghtScreenState();
}

class _LenghtScreenState extends State<LenghtScreen> {
  //* this variable holds the value of the selected DropdownButton
  String dropdownValue = 'Elije una opción';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* Message
        const Text(
          'Elige la unidad a la que quieres convertir',
          style: TextStyle(fontSize: 20),
        ),
        Center(
          //* Creating Dropdown
          child: DropdownButton(
              hint: Text(dropdownValue),
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
              onChanged: (String? valueIn) {
                setState(() {
                  dropdownValue = valueIn!;
                });
              }),
        ),
      ],
    );
  }
}
