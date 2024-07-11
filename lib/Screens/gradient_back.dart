import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientBack extends StatelessWidget {
  final String title;
  const GradientBack({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    
    
    double height = screenHeight * 0.2;
    
    return Container(
      height: height,
      width: screenWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(169, 108, 17, 253),
            Color.fromARGB(255, 236, 93, 217),
          ],
          begin: FractionalOffset(0.2, 0.0),
          end: FractionalOffset(1.0, 0.6),
          stops: [0.0, 0.6],
          tileMode: TileMode.clamp,
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
          color: Colors.white,
          fontSize: screenWidth * 0.08, 
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
