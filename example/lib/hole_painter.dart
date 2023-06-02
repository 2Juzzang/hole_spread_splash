// import 'package:flutter/material.dart';

// class HolePainter extends CustomPainter {
//   HolePainter({
//     required this.holeSize,
//     this.outerColor,
//     this.holePainterX,
//     this.holePainterY,
//   });

//   double holeSize;
//   Color? outerColor;
//   double? holePainterX;
//   double? holePainterY;

//   @override
//   void paint(Canvas canvas, Size size) {
//     //원 사이즈 지정
//     double radius = holeSize / 2;
//     Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

//     //원 위치 지정 x, y의 값을 이용하되 없을 시 중앙에 위치
//     Rect outerCircleRect = Rect.fromCircle(
//       center: Offset(
//         holePainterX ?? size.width / 2,
//         holePainterY ?? size.height / 2,
//       ),
//       radius: radius,
//     );

//     Path transparentHole = Path.combine(
//       PathOperation.difference,
//       Path()..addRect(rect),
//       Path()
//         ..addOval(outerCircleRect)
//         ..close(),
//     );
//     canvas.drawPath(
//       transparentHole,
//       //원 바깥의 색 지정
//       Paint()..color = outerColor!,
//     );
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }
