import 'package:flutter/material.dart';

class InputDecorations {
  static InputDecoration generalInputDecoration({
    required String hinText,
    String? labelText,
    IconData? prefixIcon,
  }) {
    return InputDecoration(
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.blueAccent, width: 2),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(5),
      ),
      filled: true,
      hintText: hinText,
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.grey),
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: Colors.blueAccent)
          : null,
    );
  }
}

// InputDecoration(
//                   hintText: 'Email',
//                   filled: true,
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide.none,
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                 )