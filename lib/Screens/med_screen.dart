import 'package:flutter/material.dart';
import 'package:stresalarm/Screens/header_med.dart';

class MedScreen extends StatelessWidget {
  const MedScreen({super.key});

  @override
    Widget build(BuildContext context) {
      return Stack(
       children: [
        const HeaderMed(),

       ],
      );
    }
  
}