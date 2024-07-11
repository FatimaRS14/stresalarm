import 'package:flutter/material.dart';
import 'package:stresalarm/screens/gradient_back.dart';

class HeaderReg extends StatelessWidget{
  const HeaderReg ({super.key});

  
     @override
    Widget build(BuildContext context) {
      return const Stack(
       children: [
        GradientBack(title: 'Registros'),
        
       ],
      );
    }
  
}
