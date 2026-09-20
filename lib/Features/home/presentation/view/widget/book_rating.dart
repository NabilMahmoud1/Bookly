import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bookrating extends StatelessWidget {
  const Bookrating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FaIcon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 245, 201, 24),
          size: 18,
        ),

        SizedBox(width: 5),
        Text(
          "4.8",
          style: Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 5),
        Text("(2030)", style: Styles.textstyle14),
      ],
    );
  }
}
