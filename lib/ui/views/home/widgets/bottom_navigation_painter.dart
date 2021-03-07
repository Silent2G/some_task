import 'package:flutter/material.dart';
import 'package:ss_task/ui/shared/app_colors.dart';

class BottomNavigationPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.WHITE
      ..style = PaintingStyle.fill;
    Path path = Path();
    path.moveTo(size.width * 0.41, 0);
    path.arcToPoint(Offset(size.width * 0.59, 0),
        radius: Radius.circular(8.0), clockwise: true);
    path.moveTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();
    canvas.drawShadow(path, Colors.black, 5.0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
