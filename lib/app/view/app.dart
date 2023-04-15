import 'package:cat_repository/cat_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma_challenge/app/app.dart';

class App extends StatelessWidget {
  const App({super.key, required this.catRepository});

  final CatRepository catRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: catRepository,
      child: const AppView(),
    );
  }
}
