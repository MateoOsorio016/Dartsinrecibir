import 'package:flutter/material.dart';

class Inputs  extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  

  const Inputs ({super.key, this.hintText, this.labelText, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: TextInputType.phone,
      
      decoration: InputDecoration(
      hintText: hintText,
      labelText: labelText,
      helperText: 'Solo letra',
      counterText: '3 caracteres',
      prefixIcon: const Icon(Icons.summarize),
      suffixIcon: const Icon(Icons.ac_unit_rounded),
      icon: const Icon(Icons.accessibility),
    ),
    );
  }
}