import 'package:flutter/material.dart';
import 'package:slideshow/screens/slideshow_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'SlideShow',
        home: SlideshowScreen()
      );
  }
}