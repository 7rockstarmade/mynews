import 'package:mynews/features/shared/data/models/article.dart';

abstract class RecentEvent {}

class LoadRecent extends RecentEvent {}

class AddRecent extends RecentEvent {
  AddRecent(this.article);
  final Article article;
}

class ClearRecent extends RecentEvent {}
