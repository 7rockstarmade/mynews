import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mynews/core/storage/hive.dart';
import 'package:mynews/core/theme/bloc/theme_event.dart';
import 'package:mynews/core/theme/bloc/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final Box box;
  ThemeBloc(this.box)
    : super(
        ThemeState(
          box.get(SettingsKeys.isDarkTheme, defaultValue: false) as bool,
        ),
      ) {
    on<SwitchThemeEvent>((event, emit) {
      bool mode = !state.isDarkMode;
      box.put(SettingsKeys.isDarkTheme, mode);
      emit(ThemeState(mode));
    });
  }
}
