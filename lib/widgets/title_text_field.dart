import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
    required this.title,
    required this.hint,
  });

  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleMedium16),
        const SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
