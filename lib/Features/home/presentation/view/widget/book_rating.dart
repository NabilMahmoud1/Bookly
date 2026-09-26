import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key, required this.count, required this.rating});
  final int count;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 245, 201, 24),
          size: 18,
        ),

        SizedBox(width: 5),
        Text(
          count.toString(),
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),
        Text(rating.toString(), style: Styles.textstyle14),
      ],
    );
  }
}
