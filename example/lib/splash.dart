// import 'package:flutter/material.dart';
// import 'hole_painter.dart';

// class Splash extends StatefulWidget {
//   Splash({
//     Key? key,
//     required this.logo,
//     required this.destinationPage,
//     this.animationDuration,
//     this.additionalLogo,
//     this.additionalLogoLeftPosition,
//     this.additionalLogoTopPosition,
//     this.additionalLogoRightPosition,
//     this.additionalLogoBottomPosition,
//     this.holeSize,
//     this.holeColor,
//     this.outerColor,
//     this.holePainterX,
//     this.holePainterY,
//   }) : super(key: key);
//   Widget logo; //원 안에 들어갈 로고
//   Widget destinationPage; //애니메이션이 끝나고 이동할 페이지
//   Duration? animationDuration; //스플래시 애니메이션 시간
//   Widget? additionalLogo; //추가 로고
//   double? additionalLogoLeftPosition; //추가 로고 위치설정
//   double? additionalLogoTopPosition;
//   double? additionalLogoRightPosition;
//   double? additionalLogoBottomPosition;
//   double? holeSize; //원 사이즈
//   Color? holeColor; //원 색상
//   Color? outerColor; //배경 색상
//   double? holePainterX; //원 X축 위치
//   double? holePainterY; //원 Y축 위치

//   @override
//   _SplashState createState() => _SplashState();
// }

// class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _scaleAnimation;
//   late Animation<double> _opacityAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: widget.animationDuration ?? const Duration(milliseconds: 1500),
//     );
//     _scaleAnimation = Tween<double>(begin: 0.5, end: 4.5).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Curves.easeOut,
//       ),
//     );
//     _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
//       CurvedAnimation(
//         parent: _animationController,
//         curve: Curves.easeOut,
//       ),
//     );
//     Future.delayed(
//         const Duration(milliseconds: 500),
//         () => _animationController.forward().then((_) {
//               if (_animationController.status == AnimationStatus.completed) {
//                 // 애니메이션 완료시 이동할 페이지 지정
//                 Navigator.push(
//                   context,
//                   PageRouteBuilder(
//                     transitionsBuilder:
//                         (context, animation, secondaryAnimation, child) =>
//                             FadeTransition(
//                       opacity: animation,
//                       child: child,
//                     ),
//                     transitionDuration: const Duration(milliseconds: 500),
//                     pageBuilder: (context, animation, secondaryAnimation) =>
//                         widget.destinationPage,
//                   ),
//                 );
//               }
//             }));
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _scaleAnimation,
//       builder: (context, child) {
//         return Scaffold(
//             backgroundColor: widget.holeColor ?? Colors.white,
//             body: Center(
//               child: Stack(children: [
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width,
//                   height: MediaQuery.of(context).size.height,
//                   child: CustomPaint(
//                     painter: HolePainter(
//                       holeSize: widget.holeSize ?? _scaleAnimation.value * 400,
//                       outerColor: widget.outerColor ?? Colors.blue,
//                     ),
//                     child: widget.logo,
//                   ),
//                 ),
//                 widget.additionalLogo != null
//                     ? Positioned(
//                         top: widget.additionalLogoTopPosition ?? 0,
//                         left: widget.additionalLogoLeftPosition ?? 0,
//                         bottom: widget.additionalLogoBottomPosition ?? 0,
//                         right: widget.additionalLogoRightPosition ?? 0,
//                         child: Opacity(
//                             opacity: _opacityAnimation.value,
//                             child: widget.additionalLogo),
//                       )
//                     : const SizedBox.shrink(),
//               ]),
//             ));
//       },
//     );
//   }
// }
