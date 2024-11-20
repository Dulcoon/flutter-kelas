part of 'main_bloc.dart';

@immutable
sealed class MainEvent {}

final class ChangeTabEvent extends MainEvent {
  final int tabIndex;

  ChangeTabEvent(this.tabIndex);
}
