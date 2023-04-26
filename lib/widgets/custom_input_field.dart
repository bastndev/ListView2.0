import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool  obscureText;

  final String formProperty;
  final Map<String, String> formaValues;

  const CustomInputField({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false, 
    required this.formProperty, 
    required this.formaValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText:obscureText,

      // ignore: avoid_print
      onChanged: (value)=> formaValues[formProperty] = value,
      
      /*  --- --- --- --- --- --- --- Date Usar  */
      validator: (value) {
        if (value == null) return 'Este Campo es requerido';
        return value.length < 3 ? 'Minimo de 3 letras ' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration( 
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,

        /*  --- --- --- --- --- --- --- --- Colors  */
        // prefixIcon: Icon(Icons.group_outlined, color: Colors.red,),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon), 
      ),
    );
  }
}
