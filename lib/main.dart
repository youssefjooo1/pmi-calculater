
import 'package:flutter/material.dart';
import 'package:flutter_application_120/calculator_view.dart';

void main() {
  runApp(const Bmindex());
}

class Bmindex extends StatelessWidget {
  const Bmindex({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculatorView(),
    );
  }
}

