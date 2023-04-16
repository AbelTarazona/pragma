import 'package:cat_repository/cat_repository.dart';
import 'package:flutter/material.dart';
import 'package:pragma_challenge/detail/detail.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.cat});

  final Cat cat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
      ),
      body: const DetailView(),
    );
  }
}
