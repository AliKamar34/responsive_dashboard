
import 'package:flutter/material.dart';
import 'package:newrespoapp/utils/app_styles.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:
            AppStyles.styleRegular16(context).copyWith(color: const Color(0xffAAAAAA)),
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xfffafafa),
      ),
    );
  }
}
