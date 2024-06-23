import 'package:flutter/material.dart';

class ProductDetailsCustomPainter extends CustomPainter {
  late final LinearGradient gradient;
  ProductDetailsCustomPainter({required this.gradient});

  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..shader = gradient
          .createShader(Rect.fromPoints(Offset.zero, Offset(0, size.height)))
      ..strokeJoin = StrokeJoin.miter;

     Path path_0 = Path();
    path_0.moveTo(size.width*1.0008333,size.height*-0.0016667);
    path_0.lineTo(size.width*0.9991667,size.height);
    path_0.lineTo(size.width*0.1666667,size.height*0.9966667);

    canvas.drawPath(path_0, paintFill0);
  

  // Layer 1
  
  Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paintStroke0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
