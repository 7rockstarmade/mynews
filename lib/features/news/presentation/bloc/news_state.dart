import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mynews/features/shared/data/models/article.dart';
part 'news_state.freezed.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.loaded(List<Article> articles) = _Loaded;
  const factory NewsState.loadFailure(String? message) = _LoadFailure;
}
