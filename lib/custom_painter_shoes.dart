import 'package:flutter/material.dart';

class ShoesPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;

    final Offset soulOffsetOne = Offset(width * 0.2, height * 0.25);
    final Offset soulOffsetTwo = Offset(width * 0.5, height * 0.25);
    final Offset soulOffsetLineOne = Offset(width * 0.5, height * 0.25);
    final Offset soulOffsetLineTwo = Offset(width * 0.7, height * 0.20);
    final Offset heelOffsetOne = Offset(width * 0.65, height * 0.17);
    final Offset heelOffsetTwo = Offset(width * 0.65, height * 0.35);
    final Offset heelOffseThree = Offset(width * 0.9, height * 0.35);
    final Offset heelOffsetFour = Offset(width * 0.9, height * 0.17);

    Paint soulPaint = Paint()
      ..color = Colors.blue.shade900
      ..strokeWidth = 24
      ..strokeCap = StrokeCap.butt;

    canvas.drawLine(Offset(soulOffsetOne.dx, soulOffsetOne.dy),
        Offset(soulOffsetTwo.dx, soulOffsetTwo.dy), soulPaint);
    canvas.drawLine(Offset(soulOffsetLineOne.dx, soulOffsetLineOne.dy),
        Offset(soulOffsetLineTwo.dx, soulOffsetLineTwo.dy), soulPaint);

    Path heelPath = Path();
    heelPath.moveTo(heelOffsetOne.dx, heelOffsetOne.dy);
    heelPath.lineTo(heelOffsetTwo.dx, heelOffsetTwo.dy);
    heelPath.lineTo(heelOffseThree.dx, heelOffseThree.dy);
    heelPath.lineTo(heelOffsetFour.dx, heelOffsetFour.dy);
    heelPath.close();
    canvas.drawPath(heelPath, soulPaint);
  }

  @override
  bool shouldRepaint(ShoesPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(ShoesPainter oldDelegate) => false;
}
