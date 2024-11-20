import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial(0)) {
    on<ChangeTabEvent>((event, emit) {
      // Emit state baru dengan tabIndex yang diperbarui
      emit(MainInitial(event.tabIndex));
    });
  }
}
