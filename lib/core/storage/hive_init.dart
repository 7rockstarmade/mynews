import 'package:hive_flutter/adapters.dart';
import 'package:mynews/core/storage/hive.dart';

class HiveInit {
  HiveInit._();

  static Future<void> init() async {
    await Hive.initFlutter();

    if (!Hive.isBoxOpen(HiveBoxes.settings)) {
      await Hive.openBox(HiveBoxes.settings);
    }

    if (!Hive.isBoxOpen(HiveBoxes.recent)) {
      await Hive.openBox(HiveBoxes.recent);
    }
  }
}
