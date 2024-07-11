import 'package:flutter/material.dart';
import 'package:stresalarm/screens/gradient_back.dart';
import 'package:stresalarm/screens/stress_meter.dart';

class Header extends StatelessWidget {
  final double stressLevel;
  final double meterSize;

  const Header({Key? key, required this.stressLevel, required this.meterSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientBack(title: 'Stres Alarm'),
        SizedBox(height: 20.0), // Espacio entre el título y el medidor
        Center(
          child: StressMeter(
            stressLevel: stressLevel,
            size: meterSize,
          ),
        ),
      ],
    );
  }
}
