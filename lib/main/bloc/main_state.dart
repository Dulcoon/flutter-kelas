part of 'main_bloc.dart';

@immutable
sealed class MainState {
  const MainState(this.tabIndex);

  final int tabIndex;
}

final class MainInitial extends MainState {
  MainInitial([int tabIndex = 0]) : super(tabIndex);
}
