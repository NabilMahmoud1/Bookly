import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onsubmitt,
    required TextEditingController controller,
  });
  final void Function(String)? onsubmitt;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shadowColor: Colors.white,
      child: TextField(
        onSubmitted: onsubmitt,
        style: Styles.textstyle16,

        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(124, 102, 124, 135),
          enabledBorder: BorderOutLineAll(),
          focusedBorder: BorderOutLineAll(),
          border: BorderOutLineAll(),
          hintStyle: Styles.textstyle18,
          hintText: "search",
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: const FaIcon(FontAwesomeIcons.magnifyingGlass, size: 20),
          ),
          labelText: "search",
          labelStyle: Styles.textstyle16,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder BorderOutLineAll() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
