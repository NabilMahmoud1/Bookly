import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CusttomBotton extends StatelessWidget {
  const CusttomBotton({
    super.key,
    required this.backgroundcolor,
    required this.text,
    this.borderRadius,
    required this.textcolor,
    this.fontsize,
    this.onpressed,
  });
  final Color backgroundcolor;
  final double? fontsize;
  final Color textcolor;
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 20,
          backgroundColor: backgroundcolor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(12),
          ),
        ),

        onPressed: onpressed,
        child: Text(
          text,
          style: Styles.textstyle20.copyWith(
            color: textcolor,
            fontSize: fontsize,

            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
