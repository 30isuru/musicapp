import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'home.dart';
import 'songs.dart';

void main() {
  runApp(AMusicBibleApp());
}

class AMusicBibleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'aMusicBible',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplash(),
      routes: {
        '/songs': (context) => SongsScreen(),
        '/home': (context) => AMusicBibleHomePage(),
      },
    );
  }
}

class AnimatedSplash extends StatelessWidget {
  const AnimatedSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splash: Lottie.asset('assets/img.json'),
      nextScreen: AMusicBibleHomePage(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 3000,
    );
  }
}
