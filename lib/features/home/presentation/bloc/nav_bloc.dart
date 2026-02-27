import 'package:bloc/bloc.dart';
import 'package:mynews/features/home/presentation/bloc/nav_event.dart';
import 'package:mynews/features/home/presentation/bloc/nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(NavState(0)) {
    on<NavIndexChange>((event, emit) {
      emit(NavState(event.index));
    });
  }
}
