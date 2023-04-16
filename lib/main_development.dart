import 'package:cat_repository/cat_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pragma_challenge/app/app.dart';
import 'package:pragma_challenge/bootstrap.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await dotenv.load(fileName: 'assets/.env');

  await bootstrap(() {
    final catRepository = CatRepository();

    return App(catRepository: catRepository);
  });
}
