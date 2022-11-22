part of 'slider_bloc.dart';

@freezed
class SliderState with _$SliderState {
  const SliderState._();

  const factory SliderState({
    int? currentPage
  }) = _SliderState;

  factory SliderState.initial() {
    return const SliderState(
      currentPage: 0
    );
  }
}
