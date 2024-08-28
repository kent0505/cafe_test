import 'package:flutter/cupertino.dart';

import '../../config/app_colors.dart';
import '../texts/text_b.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({super.key, required this.onPressed});

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14),
        ),
        child: const Center(
          child: TextB(
            '+',
            fontSize: 14,
            color: AppColors.textField,
          ),
        ),
      ),
    );
  }
}
