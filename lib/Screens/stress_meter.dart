import 'package:flutter/material.dart';

class StressMeter extends StatelessWidget {
  final double stressLevel;
  final double size; 

  const StressMeter({Key? key, required this.stressLevel, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color meterColor = const Color.fromARGB(255, 6, 248, 19); 
    String stressMessage = "Bajo estrés, sigue con tus pendientes"; 

    if (stressLevel > 50) {
      meterColor = Colors.yellow; 
      stressMessage = "Estrés medio, ¡Cuidado!"; 
    }
    if (stressLevel > 75) {
      meterColor = Colors.red; 
      stressMessage = "Alto estrés, Date un respiro ahora!"; 
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
          ),
          child: Stack(
            children: [
              Positioned.fill(
                child: CustomPaint(
                  painter: _SpeedMeterPainter(
                    stressLevel: stressLevel,
                    meterColor: meterColor,
                  ),
                ),
              ),
              Center(
                child: Text(
                  stressLevel.toStringAsFixed(0),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10), // Espacio entre el medidor y el mensaje
        Text(
          stressMessage,
          style: TextStyle(
            color: meterColor,
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _SpeedMeterPainter extends CustomPainter {
  final double stressLevel;
  final Color meterColor;

  _SpeedMeterPainter({required this.stressLevel, required this.meterColor});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    
    final paint = Paint()
      ..color = meterColor
      ..strokeWidth = 16.0
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -3 * 3.14 / 4,
      3 * 3.14 / 2 * stressLevel / 100,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
