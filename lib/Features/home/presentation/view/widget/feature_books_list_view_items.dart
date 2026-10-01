import 'package:bookly/core/utils/widgets/Custom_circle_indecator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeatureBooksListViewItem extends StatelessWidget {
  const FeatureBooksListViewItem({super.key, required this.urlImage});
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: const Color.fromARGB(255, 232, 230, 230),

      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(12),
        child: AspectRatio(
          aspectRatio: 2.7 / 4,
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            placeholder: (context, url) =>
                Center(child: PremiumCircularIndicator()),
            imageUrl: urlImage,

            errorWidget: (context, url, error) {
              return Icon(Icons.error);
            },
          ),
        ),
      ),
    );
  }
}
