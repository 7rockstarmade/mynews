import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mynews/features/search/data/repository/search_repository.dart';
import 'package:mynews/features/search/presentation/bloc/search_event.dart';
import 'package:mynews/features/search/presentation/bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository repo;
  SearchBloc(this.repo) : super(SearchState.initial()) {
    on<GetNewsBySearch>(_getNewsBySearch);
  }

  Future<void> _getNewsBySearch(
    GetNewsBySearch event,
    Emitter<SearchState> emit,
  ) async {
    emit(SearchState.loading());
    try {
      final articles = await repo.getNewsBySearch(event.q);
      emit(SearchState.loaded(articles));
    } catch (_) {
      emit(SearchState.loadFailure('Network error'));
    }
  }
}
