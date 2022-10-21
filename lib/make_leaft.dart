import 'package:flutter/material.dart';

class MakeLeafPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double width = size.width;
    final double height = size.height;

    final Offset leafOffsetOne = Offset(width * 0.5, height * 0.5);
    final Offset qudraticBazierControlPointOne =
        Offset(width * 0.30, height * 0.1);
    final Offset qudraticBazierControlEndPointOne = Offset(width * 0.5, 0);
    final Offset qudraticBazierControlPointTwo =
        Offset(width * 0.9, height * 0.1);
    final Offset qudraticBazierControlEndPointTwo =
        Offset(width * 0.5, height * 0.5);

    Paint leafPaint = Paint()..color = Colors.green;

    Path leafPath = Path()
      ..moveTo(leafOffsetOne.dx, leafOffsetOne.dy)
      ..quadraticBezierTo(
          qudraticBazierControlPointOne.dx,
          qudraticBazierControlPointOne.dy,
          qudraticBazierControlEndPointOne.dx,
          qudraticBazierControlEndPointOne.dy)
      ..quadraticBezierTo(
          qudraticBazierControlPointTwo.dx,
          qudraticBazierControlPointTwo.dx,
          qudraticBazierControlEndPointTwo.dx,
          qudraticBazierControlEndPointTwo.dy)
      ..close();

    canvas.drawPath(leafPath, leafPaint);
  }

  @override
  bool shouldRepaint(MakeLeafPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MakeLeafPainter oldDelegate) => false;
}
/*
class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 87, 243, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
     
         
    Path path0 = Path();
    path0.moveTo(size.width*0.3725000,size.height*0.4960000);
    path0.cubicTo(size.width*0.3946875,size.height*0.2930000,size.width*0.4659375,size.height*0.3025000,size.width*0.4987500,size.height*0.3020000);
    path0.quadraticBezierTo(size.width*0.5053125,size.height*0.5000000,size.width*0.3750000,size.height*0.4940000);
    path0.quadraticBezierTo(size.width*0.4250000,size.height*0.4090000,size.width*0.3725000,size.height*0.4960000);
    path0.close();

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

*/