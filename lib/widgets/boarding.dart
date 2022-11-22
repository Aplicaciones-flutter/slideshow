import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slideshow/bloc/slider_bloc.dart';

class Boarding extends StatelessWidget {
  const Boarding({
    super.key, 
    required this.slides, 
    this.primaryColor = Colors.blue, 
    this.secondaryColor = Colors.grey, 
    this.primaryBullet = 15, 
    this.secondaryBullet = 12
  });

  final List<Widget> slides;
  final Color primaryColor;
  final Color secondaryColor;
  final double primaryBullet;
  final double secondaryBullet;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliderBloc(),
      child: SafeArea(
        child: _Boarding(slides, primaryColor, secondaryColor, primaryBullet, secondaryBullet),
      ),
    );
  }
}

class _Boarding extends StatefulWidget {
  const _Boarding(this.slides, this.primaryColor, this.secondaryColor, this.primaryBullet, this.secondaryBullet);
  final List<Widget> slides;
  final Color primaryColor;
  final Color secondaryColor;
  final double primaryBullet;
  final double secondaryBullet;

  @override
  State<_Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<_Boarding> {

  final PageController _pageController = PageController();
  late SliderBloc _sliderBloc;

  @override
  Widget build(BuildContext context) {
    _sliderBloc = context.read<SliderBloc>();
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: _Slides(_pageController, _sliderBloc, widget.slides),
          ),
          _Dots(widget.slides.length, widget.primaryColor, widget.secondaryColor, widget.primaryBullet, widget.secondaryBullet),
          _Button(pageController: _pageController)
        ],
      ),
    );
  }
}

class _Slides extends StatelessWidget {
  const _Slides(
    PageController pageController,
    SliderBloc sliderBloc, 
    this.slides,
  ) : _pageController = pageController, _sliderBloc = sliderBloc;

  final PageController _pageController;
  final SliderBloc _sliderBloc;
  final List<Widget> slides;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      onPageChanged: (int index) {
        _sliderBloc.add(SetCurrentPage(index));
      },
      children: slides.map((slide) => _Slide(slide: slide)).toList()
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
      height: 30,
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

class _Button extends StatelessWidget {
  const _Button({
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
      child: ElevatedButton(
        onPressed: () {
          _pageController.nextPage(
            duration: const Duration(microseconds: 3000), 
            curve: Curves.easeInExpo
          );
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
          ),
        ),
        child: const Text('SIGUIENTE')
      ),
    );
  }
}
