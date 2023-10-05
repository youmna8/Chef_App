import 'package:cheif_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm(
      {super.key,
      required this.hintText,
      required this.controller,
      required this.label,
      this.validate,
      this.isPassword = false,
      this.icon, required this.onpressed});
  final String hintText;
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validate;
  final bool isPassword;
  final IconData? icon;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.primary,
      controller: controller,
      validator: validate,
      obscureText: isPassword,
      decoration: InputDecoration(
          suffixIcon: IconButton(onPressed: onpressed, icon: Icon(icon),color: AppColors.primary,),
          hintText: hintText,
          labelText: label),
    );
  }
}
