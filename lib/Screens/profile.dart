import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  final String pathImage ;
  final String user ;

  const Profile({super.key, required this.pathImage, required this.user});

  @override
  Widget build(BuildContext context) {

    //widget de perfil
    final profile = Container(
        margin: const EdgeInsets.only(
        top: 50.0, //En esta parte pertenece para las imagenes 
        left: 20.0,
      ),
      width: 60,
      height: 60.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
        image: AssetImage(pathImage),
        ),
      ),

    );

    final userName = Container(
      margin: const EdgeInsets.only(
        top: 50.0,
        left: 20.0
      ),
      child: Text(
        user,
        textAlign: TextAlign.left,
        
      )
    );

    final userDetails = Column(children: [
      userName
    ],);

    return Row(
      children: [
        profile, userDetails
      ],
    );
  }
}