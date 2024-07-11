import 'package:flutter/material.dart';
import 'package:stresalarm/Screens/profile.dart';

class ProfileFile extends StatelessWidget {
  const ProfileFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Profile(pathImage: 'assets/img/avatar.jpg',
         user: 'Fatt RS',
                  ),
      ],
      ),
    );
  }
}