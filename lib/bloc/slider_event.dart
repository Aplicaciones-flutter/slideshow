part of 'slider_bloc.dart';

@freezed
class SliderEvent with _$SliderEvent {
  const factory SliderEvent.setCurrentPage(double currentPage ) = SetCurrentPage;
}