import 'package:flutter/material.dart';

class InstructorForm extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final ValueChanged<String> onChanged;
  
  const InstructorForm({
    super.key, this.hintText, this.labelText, required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
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
    onChanged: onChanged
    );
  }
}
