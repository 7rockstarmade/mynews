import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/features/recent/data/repository/recent_reposetory.dart';
import 'package:mynews/features/recent/presentation/bloc/recent_event.dart';
import 'package:mynews/features/recent/presentation/bloc/recent_state.dart';

class RecentBloc extends Bloc<RecentEvent, RecentState> {
  final RecentRepository repo;
  RecentBloc(this.repo) : super(RecentState.initial()) {
    on<AddRecent>(_addRecent);
    on<LoadRecent>(_loadRecent);
    on<ClearRecent>(_clearRecent);
  }

  Future<void> _addRecent(AddRecent event, Emitter<RecentState> emit) async {
    await repo.add(event.article);
    final recents = repo.getAll();
    emit(RecentState.success(recents));
  }

  Future<void> _loadRecent(LoadRecent event, Emitter<RecentState> emit) async {
    emit(RecentState.loading());
    final recents = repo.getAll();
    emit(RecentState.success(recents));
  }

  Future<void> _clearRecent(
    ClearRecent event,
    Emitter<RecentState> emit,
  ) async {
    await repo.clear();
    emit(RecentState.success([]));
  }
}
