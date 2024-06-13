import 'package:flutter/material.dart';


class CustomTextField4 extends StatelessWidget {
  String? label;
  bool? obsecuretext;
  int? max;
  int? mini;
  String? hint;
  String? validator;
  final controller;
  FormFieldValidator? vaalidator;
  var prefix;

  CustomTextField4({
    this.validator,
    this.max,
    this.mini,
    this.controller,
    this.vaalidator,
    this.label,
    this.hint,
    this.prefix,
    this.obsecuretext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        style: const TextStyle(color: Colors.black),
        obscureText: obsecuretext ?? false,
        controller: controller,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            suffixIcon: prefix,
            hintStyle: const TextStyle(color: Colors.black),
            labelText: label,
            hintText: hint,
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            errorStyle: const TextStyle(height: 0.1),
           ),
        validator: vaalidator ??
                (v) {
              if (v!.isEmpty) {
                return validator;
              }
              return null;
            },
      ),
    );
  }
}