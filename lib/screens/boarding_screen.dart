import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slideshow/bloc/slider_bloc.dart';


class BoardingScreen extends StatelessWidget{
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SliderBloc(),
      child: SafeArea(
        child: _Boarding(),
      ),
    );
  }
}

class _Boarding extends StatefulWidget {

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
            child: PageView(
              controller: _pageController,
              onPageChanged: (int index) {
                _sliderBloc.add(SetCurrentPage(index));
              },
              children: const <Widget>[
                _Slide('assets/svgs/slide-1.svg'),
                _Slide('assets/svgs/slide-2.svg'),
                _Slide('assets/svgs/slide-3.svg'),
              ],
            ),
          ),
          const _Dots(),
          _Button(pageController: _pageController)
        ],
      ),
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

class _Slide extends StatelessWidget {
  const _Slide(this.svg);
  final String svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(30),
      child: SvgPicture.asset(svg)
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          _Dot(index: 0),
          _Dot(index: 1),
          _Dot(index: 2)
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {

  const _Dot({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SliderBloc, SliderState>(
      listener: (context, state) {},
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(microseconds: 200),
          width: 12,
          height: 12,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: (state.currentPage! >= index - 0.5 && state.currentPage! < index + 0.5) ? Colors.blue: Colors.grey,
            shape: BoxShape.circle
          ),
        );
      },
    );
  }
}