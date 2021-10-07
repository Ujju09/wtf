import 'package:flutter/material.dart';

class PaintUpperCurve extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color(0xff9BE2DE)
      ..style = PaintingStyle.fill;
    var path = Path();
    path.moveTo(0, size.height * 0.36875);
    path.quadraticBezierTo(size.width * 0.277, size.height * 0.3752,
        size.width * 0.525, size.height * 0.1953);
    path.quadraticBezierTo(
        size.width * 0.69, size.height * 0.071, size.width, 0);

    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

//Widgets to image conversion
class WidgetToImageConverter extends StatefulWidget {
  const WidgetToImageConverter({Key? key, required this.builder})
      : super(key: key);
  final Function(GlobalKey key) builder;

  @override
  _WidgetToImageConverterState createState() => _WidgetToImageConverterState();
}

// Don't know whats going on
class _WidgetToImageConverterState extends State<WidgetToImageConverter> {
  final gloabalKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      key: gloabalKey,
      child: widget.builder(gloabalKey),
    );
  }
}
