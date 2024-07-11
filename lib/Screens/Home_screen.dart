import 'package:flutter/material.dart';
import 'package:stresalarm/screens/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    double stressLevel = 180.0; //Ejemplo

    double meterSize = MediaQuery.of(context).size.width * 0.4;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Header(
              stressLevel: stressLevel,
              meterSize: meterSize,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 100.0), 
                child: Center(
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
