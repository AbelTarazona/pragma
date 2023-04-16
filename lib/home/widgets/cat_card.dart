import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_repository/cat_repository.dart';
import 'package:flutter/material.dart';
import 'package:pragma_challenge/detail/view/view.dart';
import 'package:pragma_challenge/utils/extensions/sizebox.dart';

class CatCard extends StatelessWidget {
  const CatCard({super.key, required this.cat});

  final Cat cat;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<dynamic>(
            builder: (context) => DetailPage(cat: cat),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.only(bottom: 16, left: 1, right: 1),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                cat.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              16.0.heightBox,
              Hero(
                tag: cat.id,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://cdn2.thecatapi.com/images/${cat.referenceImageId}.jpg',
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Center(
                          child: CircularProgressIndicator(
                              value: downloadProgress.progress)),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              16.0.heightBox,
              Row(
                children: [
                  Expanded(
                    child: Text(
                      cat.origin,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  10.0.widthBox,
                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: 'Intelligence: ',
                        children: [
                          TextSpan(
                            text: '${cat.intelligence}',
                            style: const TextStyle(fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
