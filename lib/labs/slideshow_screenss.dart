import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slideshow/bloc/slider_bloc.dart';

class SlideshowScreenss extends StatelessWidget {
  const SlideshowScreenss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const <Widget>[
            Expanded(
              child: _Slides()
            ),
            _Dots()
          ],
        )
      ),
    );
  }
}

class _Dots extends StatelessWidget {
  const _Dots({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
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

  const _Dot({
    super.key, required this.index,
  });

  final double index;

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

class _Slides extends StatefulWidget {
  const _Slides({super.key});

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
      // _sliderBloc.add(SetCurrentPage(pageViewController.page ?? 0));
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
      children: const <Widget>[
        _Slide(svg: 'assets/svgs/slide-1.svg'),
        _Slide(svg: 'assets/svgs/slide-2.svg'),
        _Slide(svg: 'assets/svgs/slide-3.svg'),
      ],
    );
  }
}

class _Slide extends StatelessWidget {
  const _Slide({super.key, required this.svg});
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