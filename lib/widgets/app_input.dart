import 'package:flutter/material.dart';

class AppInput extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;

  const AppInput({
    super.key,
    this.labelText,
    this.hintText,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
