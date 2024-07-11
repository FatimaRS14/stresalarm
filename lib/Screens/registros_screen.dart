import 'package:flutter/material.dart';
import 'package:stresalarm/Screens/header_reg.dart';

class RegistrosScreen extends StatelessWidget {
  const RegistrosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
       children: [
           
       const HeaderReg(),
          ],
    );
  }
}