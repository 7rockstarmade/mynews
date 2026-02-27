import 'package:bloc/bloc.dart';
import 'package:mynews/core/theme/bloc/theme_event.dart';
import 'package:mynews/core/theme/bloc/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeState(false)) {
    on<SwitchThemeEvent>((event, emit) {
      bool mode = !state.isDarkMode;
      emit(ThemeState(mode));
    });
  }
}
