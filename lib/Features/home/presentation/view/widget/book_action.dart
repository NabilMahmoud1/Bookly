import 'package:bookly/core/utils/widgets/custom_botton.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        children: [
          Expanded(
            child: CusttomBotton(
              backgroundcolor: Colors.white,
              text: r'19.99$',
              fontsize: 19,
              textcolor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CusttomBotton(
              backgroundcolor: Colors.deepOrange,
              text: "Free preview",
              fontsize: 19,
              textcolor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
