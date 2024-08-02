import 'package:flutter/material.dart';
import 'package:newrespoapp/utils/app_styles.dart';
import 'package:newrespoapp/widgets/custom_text_ffeild.dart';

class TitleTextFeild extends StatelessWidget {
  const TitleTextFeild({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMeduim16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextFeild(
          hint: hint,
        ),
      ],
    );
  }
}
