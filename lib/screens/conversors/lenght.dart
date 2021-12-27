import 'package:flutter/material.dart';

class LenghtScreen extends StatelessWidget {
  final Color color;
  const LenghtScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: const Center(
        child: Text('Length screen'),
      ),
    );
  }
}