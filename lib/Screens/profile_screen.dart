import 'package:flutter/material.dart';
import 'package:stresalarm/Screens/header_file.dart';
import 'package:stresalarm/Screens/profile_file.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
       children: [
           
       const HeaderFile(),
       const ProfileFile(),

          ],
    );
  }
}