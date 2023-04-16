import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_repository/cat_repository.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.cat});

  final Cat cat;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: cat.id,
          child: CachedNetworkImage(
            imageUrl:
                'https://cdn2.thecatapi.com/images/${cat.referenceImageId}.jpg',
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            fit: BoxFit.cover,
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(
              child:
                  CircularProgressIndicator(value: downloadProgress.progress),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        )
      ],
    );
  }
}
