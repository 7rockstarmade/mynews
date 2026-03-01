import 'package:hive_flutter/hive_flutter.dart';
import 'package:mynews/features/shared/data/models/article.dart';

class RecentRepository {
  RecentRepository(this.box);

  final Box box;

  static const _key = 'items';
  static const _limit = 30;

  List<Article> getAll() {
    final raw = (box.get(_key, defaultValue: <dynamic>[]) as List)
        .cast<dynamic>();

    return raw
        .map((e) => Article.fromMap((e as Map).cast<dynamic, dynamic>()))
        .toList();
  }

  Future<void> add(Article article) async {
    final items = getAll();
    items.removeWhere((a) => a.url == article.url);
    items.insert(0, article);
    final trimmed = items.take(_limit).toList();

    await box.put(_key, trimmed.map((a) => a.toMap()).toList());
  }

  Future<void> clear() => box.put(_key, <dynamic>[]);
}
