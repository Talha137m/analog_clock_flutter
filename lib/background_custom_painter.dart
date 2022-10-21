import 'package:flutter/material.dart';

class BackgroundDesinPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;

    final Offset cubicToControlPointOne = Offset(width * 0.25, height * 0.20);
    final Offset cubicToControlPointTwo = Offset(width * 0.75, height * 0.80);
    final Offset cubicToEndPoint = Offset(width, height * 0.5);
    final Offset lineToOffsetOne = Offset(width, 0);
    final Offset lineToOffSetTwo = Offset(width, height * 0.5);
    final Offset upparControlPointOne = Offset(width * 0.75, height * 0.80);
    final Offset upparControlPointTwo = Offset(width * 0.25, height * 0.20);
    final Offset upparEndPoint = Offset(0, height * 0.5);
    final Offset drawLineOffsetOne = Offset(0, height * 0.85);
    final Offset drawlineOffsetTwo = Offset(width * 0.5, height * 0.70);
    final Offset drawLineOffsetThree = Offset(width * 0.2, height * 0.4);
    final Offset drawLineOffsetFour = Offset(width * 0.5, height * 0.4);
    final Offset drawLineOffsetFive = Offset(width * 0.2, height * 0.2);

    Paint cubicPaint = Paint()..color = Colors.deepPurple;
    Paint upparPathPaint = Paint()..color = Colors.redAccent;
    Paint linePaint = Paint()..color = Colors.white;

    Path cubicPath = Path();
    cubicPath.moveTo(0, height * 0.5);
    cubicPath.cubicTo(
        cubicToControlPointOne.dx,
        cubicToControlPointOne.dy,
        cubicToControlPointTwo.dx,
        cubicToControlPointTwo.dy,
        cubicToEndPoint.dx,
        cubicToEndPoint.dy);
    cubicPath.lineTo(width, height);
    cubicPath.lineTo(0, height);
    cubicPath.close();

    canvas.drawPath(cubicPath, cubicPaint);

    Path upparPath = Path();
    upparPath.lineTo(lineToOffsetOne.dx, lineToOffsetOne.dy);
    upparPath.lineTo(lineToOffSetTwo.dx, lineToOffSetTwo.dy);
    upparPath.cubicTo(
        upparControlPointOne.dx,
        upparControlPointOne.dy,
        upparControlPointTwo.dx,
        upparControlPointTwo.dy,
        upparEndPoint.dx,
        upparEndPoint.dy);
    upparPath.close();

    canvas.drawPath(upparPath, upparPathPaint);

    Path drawLinesPath = Path()
      ..moveTo(drawLineOffsetOne.dx, drawLineOffsetOne.dy)
      ..lineTo(drawlineOffsetTwo.dx, drawlineOffsetTwo.dy)
      ..lineTo(drawLineOffsetThree.dx, drawLineOffsetThree.dy)
      ..lineTo(drawLineOffsetFour.dx, drawLineOffsetFour.dy)
      ..lineTo(drawLineOffsetFive.dx, drawLineOffsetFive.dy)
      ..close();

    canvas.drawPath(drawLinesPath, linePaint);
  }

  @override
  bool shouldRepaint(BackgroundDesinPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(BackgroundDesinPainter oldDelegate) => false;
}
