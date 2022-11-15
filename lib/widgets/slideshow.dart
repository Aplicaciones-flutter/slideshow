import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slideshow/bloc/slider_bloc.dart';

class Slideshow extends StatelessWidget {
  const Slideshow({
    super.key, 
    required this.slides, 
    this.pointsUp = false, 
    this.primaryColor = Colors.blue, 
    this.secondaryColor = Colors.grey, 
    this.primaryBullet  = 15, 
    this.secondaryBullet = 12,
  });

  final List<Widget> slides;
  final bool pointsUp;
  final Color primaryColor;
  final Color secondaryColor;
  final double primaryBullet;
  final double secondaryBullet;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliderBloc(),
      child: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                if(pointsUp) _Dots( slides.length, primaryColor, secondaryColor, primaryBullet, secondaryBullet),
                Expanded(
                  child: _Slides(slides)
                ),
                if(!pointsUp) _Dots( slides.length, primaryColor, secondaryColor, primaryBullet, secondaryBullet),
              ],
            )
          ),
        ),
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots(this.totalSlides, this.primaryColor, this.secondaryColor, this.primaryBullet, this.secondaryBullet);

  final int totalSlides;
  final Color primaryColor;
  final Color secondaryColor;
  final double primaryBullet; 
  final double secondaryBullet;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(totalSlides, (index) => _Dot(index, primaryColor, secondaryColor, primaryBullet, secondaryBullet)),
      ),
    );
  }
}

class _Dot extends StatelessWidget {

  const _Dot(this.index, this.primaryColor, this.secondaryColor, this.primaryBullet, this.secondaryBullet);

  final int index;
  final Color primaryColor;
  final Color secondaryColor;
  final double primaryBullet; 
  final double secondaryBullet;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SliderBloc, SliderState>(
      listener: (context, state) {},
      builder: (context, state) {
        final size = ( state.currentPage == index) ? primaryBullet: secondaryBullet;
        return AnimatedContainer(
          duration: const Duration(microseconds: 200),
          width: size,
          height: size,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: (state.currentPage! >= index - 0.5 && state.currentPage! < index + 0.5) ? primaryColor: secondaryColor,
            shape: BoxShape.circle
          ),
        );
      },
    );
  }
}

class _Slides extends StatefulWidget {
  const _Slides(this.slides);

  final List<Widget> slides;
  @override
  State<_Slides> createState() => _SlidesState();
}

class _SlidesState extends State<_Slides> {
  final pageViewController = PageController();
  late SliderBloc _sliderBloc;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      _sliderBloc.add(SetCurrentPage(pageViewController.page ?? 0));
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _sliderBloc = context.read<SliderBloc>();
    return PageView(
      controller: pageViewController,
      children: widget.slides.map((slide) => _Slide(slide: slide)).toList(),
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide({required this.slide});
  final Widget slide;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(30),
      child: slide
    );
  }
}