import 'package:flutter/material.dart';
import 'package:pragma_challenge/home/home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cats World'),
      ),
      body: const HomeView(),
    );
  }
}