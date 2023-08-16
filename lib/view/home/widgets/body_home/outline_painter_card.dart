part of '../../../../utils/import/app_import.dart';

class FuceOutlinePainterX extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Colors.redAccent.shade100;

    canvas.drawOval(Rect.fromLTWH(size.width - 60, 30, 100, 100), paint);
    canvas.drawOval(Rect.fromLTWH(size.width - -115, 115, 20, 20), paint);

    canvas.drawOval(Rect.fromLTWH(size.width - -120, 120, 100, 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class FuceOutlinePainterY extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Colors.blueAccent.shade200;
    canvas.drawOval(Rect.fromLTWH(size.width - 50, 120, 100, 100), paint);
    canvas.drawOval(Rect.fromLTWH(size.width - -20, 25, 18, 18), paint);

    canvas.drawOval(Rect.fromLTWH(size.width - -120, 30, 100, 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class FuceOutlinePainterA extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Colors.green.shade200;

    canvas.drawOval(Rect.fromLTWH(size.width - 30, 120, 100, 100), paint);

    canvas.drawOval(Rect.fromLTWH(size.width - -120, -70, 100, 100), paint);
    canvas.drawOval(Rect.fromLTWH(size.width - -100, 120, 15, 15), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class FuceOutlinePainterB extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 4.0
      ..color = Colors.orange.shade200;
    canvas.drawOval(Rect.fromLTWH(size.width - 50, -68, 100, 100), paint);

    canvas.drawOval(Rect.fromLTWH(size.width - -50, 50, 100, 100), paint);
    canvas.drawOval(Rect.fromLTWH(size.width - 0, 60, 30, 30), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
