import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mynews/app.dart';
import 'package:mynews/core/storage/hive_init.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await HiveInit.init();
  runApp(const MyNewsApp());
}
