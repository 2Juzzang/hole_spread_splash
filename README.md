# Hole Spread Splash

Hole Spread Splash is a Flutter package that provides a splash screen with an expanding hole animation effect. It creates a visually appealing transition between the splash screen and the main screen of your Flutter application.

## Features

- Customizable hole size, position, and color
- Adjustable animation duration
- Easy to integrate into your Flutter application

## Installation

To use Hole Spread Splash in your Flutter project, follow these steps:

1. Add the following dependency to your `pubspec.yaml` file:

   ```yaml
   dependencies:
     hole_spread_splash: ^0.0.1

   Run flutter pub get to install the package.

   Usage
   Import the package in your Dart file:
   ```

2. Run flutter pub get to install the package.
   <br/>

## Usage

1. Import the package in your Dart file:

```
import 'package:hole_spread_splash/hole_spread_splash.dart';
```

2. Create an instance of 'Splash' and customize it according to your needs. You can specify the logo, hole color, additional logo, and other parameters.

```
Splash splash = Splash(
  logo: MyLogoWidget(),
  holeColor: Colors.amber,
  outerColor: Colors.black,
  additionalLogo: AdditionalLogoWidget(),
  animationDuration: Duration(seconds: 2),
);
```

3. example usage

```
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
              holeColor: Colors.amber,
              outerColor: Colors.black,
            )
      },
    );
  }
}
```

4. Run your Flutter app and enjoy the splash screen with the expanding hole animation effect!
   <br/>

## Example

For a complete example of using Hole Spread Splash, please refer to the example directory of this package.
<br/>

## License

This project is licensed under the MIT License - see the LICENSE file for details.
