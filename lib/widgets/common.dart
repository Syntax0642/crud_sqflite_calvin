import 'package:flutter/material.dart';

Widget styledTextField(
    {required TextEditingController controller,
      FocusNode? focus,
      String? hintText,
      double? borderRadius}) {
  return TextField(
    controller: controller,
    focusNode: focus,
    onTapOutside: (e) => focus?.unfocus(),
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.symmetric(horizontal: 10),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5))),
      hintText: hintText,
    ),
  );
}