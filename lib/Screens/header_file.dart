import 'package:flutter/material.dart';
import 'package:stresalarm/Screens/gradient_back.dart';

class HeaderFile extends StatelessWidget {
  const HeaderFile({super.key});

    @override
    Widget build(BuildContext context) {
      return const Stack(
       children: [
         GradientBack(title: 'Profile'),

       ],
      );
    }
  
}
