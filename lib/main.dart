import 'package:flutter/material.dart';
import 'package:slideshow/screens/boarding_screen.dart';
import 'package:slideshow/screens/slideshow_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MaterialColor primaryColor = const MaterialColor(0xFF003264, <int, Color>{
        50: Color(0xFF003264),
        100: Color(0xFF003264),
        200: Color(0xFF003264),
        300: Color(0xFF003264),
        400: Color(0xFF003264),
        500: Color(0xFF003264),
        600: Color(0xFF003264),
        700: Color(0xFF003264),
        800: Color(0xFF003264),
        900: Color(0xFF003264),
    });

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SlideShow', 
        // home: const LoginScreen(),
        home: const SlideshowScreen(),
        // initialRoute: HomeScreen.routeName,
        // routes: {
        //   HomeScreen.routeName: (_) => const HomeScreen(),
        //   SilverHomeScree.routeName: (_) => const SilverHomeScree(),
        // },
        theme: ThemeData(
          primarySwatch: primaryColor
        ),
      );
  }
}