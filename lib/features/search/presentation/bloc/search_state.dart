import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mynews/features/shared/data/models/article.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loaded(List<Article> articles) = _Loaded;
  const factory SearchState.loadFailure(String? message) = _LoadFailure;
}
