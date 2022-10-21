import 'dart:math' as math;
import 'dart:math';
import 'package:flutter/material.dart';

class AnalogPainter extends CustomPainter {
  DateTime now;
  AnalogPainter(this.now);

  @override
  void paint(Canvas canvas, Size size) {
    const double totalNoOfTicks = 60;
    const double angle = (2 * pi) / totalNoOfTicks;
    final double width = size.width;
    final double height = size.height;
    final double radius = min(width, height);
    final double hoursLineThickness = radius * 0.09;
    final double otherLinesThickness = radius * 0.05;

    final centerOffset = Offset(width / 2, height / 2);
    const miniCircleOffset = Offset(0, 0);

    //clock paint
    final clockPaint = Paint()..color = Colors.blue;
    //minutes line paint
    final minutesLinePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = radius * 0.02;
    //hours line paint
    final hoursLinePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = radius * 0.03;
    //mini circle paint
    final miniCirclePaint = Paint()..color = Colors.red;
    //hours needle paint
    final secondsNeedlePaint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = radius * 0.04;
    //minutes needle paint
    final minutesNeedlePaint = Paint()..color = Colors.black;
    //small needle paint
    final paint = Paint()
      ..color = Colors.black
      ..strokeCap = StrokeCap.round
      ..strokeWidth = radius * 0.06;

    //draw circle with ticks
    canvas.drawCircle(centerOffset, radius, clockPaint);
    canvas.translate(centerOffset.dx, centerOffset.dy);
    canvas.save();

    for (var i = 0; i < totalNoOfTicks; i++) {
      if (now.second == i) {
        //draw seconds needle
        canvas.drawLine(Offset(0, radius * 0.35),
            Offset(radius * 0, -radius * 0.83), secondsNeedlePaint);
      }

      if (now.minute == i) {
        //draw minutes needle
        Path path = Path();
        path.moveTo(-radius * 0.04, 0);
        path.lineTo(0, -radius * 0.8);
        path.lineTo(radius * 0.04, radius * 0.04);
        path.close();
        canvas.drawPath(path, minutesNeedlePaint);
      }

      if (now.hour % 12 * 5 == i) {
        //draw hours needle
        canvas.drawLine(
            const Offset(0, 0), Offset(radius * 0.01, -radius * 0.6), paint);
      }

      //draw ticks
      if (i % 5 == 0) {
        //draw hours line
        canvas.drawLine(Offset(0, -radius),
            Offset(0, -radius + hoursLineThickness), hoursLinePaint);
      } else {
        //draw others line
        canvas.drawLine(Offset(0, -radius),
            Offset(0, -radius + otherLinesThickness), minutesLinePaint);
      }

      canvas.rotate(angle);
    }
    canvas.restore();

    //red circle
    canvas.drawCircle(miniCircleOffset, radius / 12, miniCirclePaint);
    //draw black circle in center
    canvas.drawCircle(miniCircleOffset, radius / 18, minutesNeedlePaint);

    //////////
    //draw text 12
    TextPainter textPainter = TextPainter();
    textPainter.textDirection = TextDirection.ltr;
    textPainter.text = TextSpan(
        text: '12',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter.layout();
    textPainter.paint(canvas, Offset(-radius * 0.06, -radius * 0.9));
    //////////////////////
    //draw text 1
    TextPainter textPainter1 = TextPainter();
    textPainter1.textDirection = TextDirection.ltr;
    textPainter1.text = TextSpan(
        text: '1',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter1.layout();
    textPainter1.paint(canvas, Offset(radius * 0.38, -radius * 0.83));

    //////////////////////
    //draw text 2
    TextPainter textPainter2 = TextPainter();
    textPainter2.textDirection = TextDirection.ltr;
    textPainter2.text = TextSpan(
        text: '2',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter2.layout();
    textPainter2.paint(canvas, Offset(radius * 0.7, -radius * 0.5));

    //////////////////////
    //draw text 3
    TextPainter textPainter3 = TextPainter();
    textPainter3.textDirection = TextDirection.ltr;
    textPainter3.text = TextSpan(
        text: '3',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter3.layout();
    textPainter3.paint(canvas, Offset(radius * 0.83, -radius * 0.07));

    //////////////////////
    //draw text 4
    //////////////
    TextPainter textPainter4 = TextPainter();
    textPainter4.textDirection = TextDirection.ltr;
    textPainter4.text = TextSpan(
        text: '4',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter4.layout();
    textPainter4.paint(canvas, Offset(radius * 0.7, radius * 0.37));

    //////////////////////
    //draw text 5
    TextPainter textPainter5 = TextPainter();
    textPainter5.textDirection = TextDirection.ltr;
    textPainter5.text = TextSpan(
        text: '5',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter5.layout();
    textPainter5.paint(canvas, Offset(radius * 0.39, radius * 0.67));

    //////////////////////
    //draw text 6
    TextPainter textPainter6 = TextPainter();
    textPainter6.textDirection = TextDirection.ltr;
    textPainter6.text = TextSpan(
        text: '6',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter6.layout();
    textPainter6.paint(canvas, Offset(-radius * 0.03, radius * 0.78));

    //////////////////////
    //draw text 7
    TextPainter textPainter7 = TextPainter();
    textPainter7.textDirection = TextDirection.ltr;
    textPainter7.text = TextSpan(
        text: '7',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter7.layout();
    textPainter7.paint(canvas, Offset(-radius * 0.45, radius * 0.67));

    //////////////////////
    //draw text 8
    TextPainter textPainter8 = TextPainter();
    textPainter8.textDirection = TextDirection.ltr;
    textPainter8.text = TextSpan(
        text: '8',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter8.layout();
    textPainter8.paint(canvas, Offset(-radius * 0.77, radius * 0.38));

    //////////////////////
    //draw text 1
    TextPainter textPainter9 = TextPainter();
    textPainter9.textDirection = TextDirection.ltr;
    textPainter9.text = TextSpan(
        text: '9',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter9.layout();
    textPainter9.paint(canvas, Offset(-radius * 0.9, -radius * 0.07));

    //////////////////////
    //draw text 10
    TextPainter textPainter10 = TextPainter();
    textPainter10.textDirection = TextDirection.ltr;
    textPainter10.text = TextSpan(
        text: '10',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter10.layout();
    textPainter10.paint(canvas, Offset(-radius * 0.78, -radius * 0.5));

    //////////////////////
    //draw text 11
    TextPainter textPainter11 = TextPainter();
    textPainter11.textDirection = TextDirection.ltr;
    textPainter11.text = TextSpan(
        text: '11',
        style: TextStyle(color: Colors.white, fontSize: radius * 0.12));

    textPainter11.layout();
    textPainter11.paint(canvas, Offset(-radius * 0.50, -radius * 0.8));
  }

  @override
  bool shouldRepaint(AnalogPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(AnalogPainter oldDelegate) => true;
}

class GetOffset {
  static Offset getOffsetWithRadiusAndTheta(
      {required double radius, required double theta}) {
    theta = theta - (math.pi / 2);
    return Offset(radius * math.cos(theta), radius * math.sin(theta));
  }
}





/*
class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 3, 12, 19)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
     
         
    Path path0 = Path();
    path0.moveTo(size.width*0.4987500,size.height*0.3000000);
    path0.lineTo(size.width*0.4125000,size.height*0.3000000);
    path0.lineTo(size.width*0.3687500,size.height*0.3340000);
    path0.lineTo(size.width*0.4125000,size.height*0.3740000);
    path0.lineTo(size.width*0.4987500,size.height*0.3740000);
    path0.lineTo(size.width*0.4987500,size.height*0.3000000);
    path0.close();

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}


*/
