import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slideshow/widgets/boarding.dart';
// import 'package:slideshow/widgets/slideshow.dart';

class SlideshowScreen extends StatelessWidget {
  const SlideshowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const <Widget>[
          Expanded(child: MySlideshow()),
          // Expanded(child: MySlideshow()),
        ],
      )
    );
  }
}

class MySlideshow extends StatelessWidget {
  const MySlideshow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.purple,
    //   body: Slideshow( 
    //     primaryColor: Colors.blue,
    //     secondaryColor: Colors.white, 
    //     slides: [
    //       SvgPicture.asset('assets/svgs/slide-1.svg'),
    //       SvgPicture.asset('assets/svgs/slide-2.svg'),
    //       SvgPicture.asset('assets/svgs/slide-3.svg'),
    //       SvgPicture.asset('assets/svgs/slide-4.svg'),
    //       SvgPicture.asset('assets/svgs/slide-5.svg'),
    //     ],
    //   )
    // );
    return Scaffold(
      body: Boarding( 
        slides: [
          SvgPicture.asset('assets/svgs/slide-1.svg'),
          SvgPicture.asset('assets/svgs/slide-2.svg'),
          SvgPicture.asset('assets/svgs/slide-3.svg'),
          SvgPicture.asset('assets/svgs/slide-4.svg'),
          SvgPicture.asset('assets/svgs/slide-5.svg'),
        ],
      )
    );
  }
}
