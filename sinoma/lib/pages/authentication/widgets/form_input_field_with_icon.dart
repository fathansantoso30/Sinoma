import 'package:flutter/material.dart';
import 'package:sinoma/themes/const.dart';

/// Widget Untuk Form Field
class FormInputFieldWithIcon extends StatelessWidget {
  FormInputFieldWithIcon(
      {this.controller,
      this.iconPrefix,
      this.suffix,
      this.labelText,
      this.validator,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.minLines = 1,
      this.maxLines,
      this.onChanged,
      this.onSaved});

  final TextEditingController controller;
  final IconData iconPrefix;
  final String labelText;
  final String Function(String) validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final int minLines;
  final int maxLines;
  final void Function(String) onChanged;
  final void Function(String) onSaved;
  final Widget suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        filled: true,
        prefixIcon: Icon(iconPrefix),
        suffix: suffix,
        labelText: labelText,
        fillColor: whiteColor,
      ),
      controller: controller,
      onSaved: onSaved,
      onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      minLines: minLines,
      validator: validator,
    );
  }
}
