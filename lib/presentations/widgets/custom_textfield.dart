import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;

  final String hint;

  final int maxLine;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.maxLine = 1,
  });

  @override
  Widget build(BuildContext context) {

    return TextField(

      controller: controller,

      maxLines: maxLine,

      decoration: InputDecoration(

        hintText: hint,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}