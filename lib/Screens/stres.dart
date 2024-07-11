import 'package:flutter/material.dart';
import 'package:stresalarm/Screens/Home_screen.dart';
import 'package:stresalarm/Screens/profile_screen.dart';
import 'package:stresalarm/Screens/registros_screen.dart';
import 'package:stresalarm/Screens/med_screen.dart';


class Stres extends StatefulWidget {
  const Stres({super.key});

  @override
  State<Stres> createState() => _StresState();
}

class _StresState extends State<Stres> {
  int indexTap = 0;
  final List<Widget> widgetChildren = const [
    HomeScreen(),
    RegistrosScreen(),
    ProfileScreen(),
    MedScreen(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: const Color.fromARGB(255, 210, 96, 238),
          primaryColor: Colors.deepPurpleAccent,
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.timeline),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}