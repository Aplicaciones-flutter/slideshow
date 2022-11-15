import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_event.dart';
part 'slider_state.dart';
part 'slider_bloc.freezed.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(SliderState.initial()) {
    on<SetCurrentPage>((event, emit) {
      emit(state.copyWith(
        currentPage: event.currentPage
      ));
    });
  }
}
