import 'package:flutter/material.dart';
import '../constants/colors.dart' as app_color;

class TextForm extends StatefulWidget {
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController? controller;
  final Color labelColor;
  final bool? obscureText;
  final bool isRequired;
  final Function(String)? onChanged;
  final String? hintText;
  final Icon? suffixIcon;
  final Icon? prefixIcon;
  final Color? fillColor;
  final int? maxLines;

  const TextForm(
      {this.controller,
      required this.keyboardType,
      required this.labelText,
      required this.labelColor,
      this.obscureText,
      this.isRequired = true,
      this.onChanged,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.fillColor,
      this.maxLines,
      super.key});

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return TextFormField(
      validator: (value) {
        if (widget.isRequired && (value == null || value.isEmpty)) {
          return 'Input cannot be empty';
        }
        return null;
      },
      obscureText: widget.obscureText ?? false,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxLines ?? 1,
      style: TextStyle(
        fontSize: screenWidth * 0.03,
        fontFamily: 'Poppins',
      ),
      decoration: InputDecoration(
          filled: true,
          fillColor: widget.fillColor ?? app_color.white,
          hintText: widget.hintText,
          labelText: widget.labelText,
          labelStyle:
              TextStyle(color: widget.labelColor, fontSize: screenWidth * 0.03),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  width: 1,
                  color: app_color.transparent,
                  style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                  color: app_color.transparent, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.redAccent)),
          contentPadding: const EdgeInsets.all(10),
          suffixIcon: widget.suffixIcon,
          prefixIcon: widget.prefixIcon,
          suffixIconColor: app_color.grey,
          prefixIconColor: app_color.grey),
      cursorColor: widget.labelColor,
      controller: widget.controller,
      onChanged: widget.onChanged,
    );
  }
}
