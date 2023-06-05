import 'package:flutter/material.dart';
import 'package:hole_spread_splash/hole_spread_splash.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/splash',
      routes: {
        '/': (context) => const HomePage(),
        '/splash': (context) => Splash(
              logo: Center(
                child: Image.asset(
                  'assets/images/hong.gif',
                  width: 150,
                  height: 150,
                ),
              ),
              destinationPage: const HomePage(),
              additionalLogo: const Center(
                child: Text(
                  '홍진경',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              additionalLogoTopPosition: 120,
            )
      },
    );
  }
}
