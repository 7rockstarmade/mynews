import 'package:bloc/bloc.dart';
import 'package:mynews/features/news/data/repository/news_repositotry.dart';
import 'package:mynews/features/news/presentation/bloc/news_event.dart';
import 'package:mynews/features/news/presentation/bloc/news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepositotry repo;
  NewsBloc(this.repo) : super(NewsState.initial()) {
    on<GetTopHeadlines>(_getTopHeadlines);
  }
  Future<void> _getTopHeadlines(
    GetTopHeadlines event,
    Emitter<NewsState> emit,
  ) async {
    emit(NewsState.loading());
    try {
      final articles = await repo.getTopHeadlines();
      emit(NewsState.loaded(articles));
    } catch (_) {
      emit(NewsState.loadFailure('Network error'));
    }
  }
}
