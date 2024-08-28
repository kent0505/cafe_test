import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../config/app_colors.dart';
import '../textfields/txt_field.dart';
import '../texts/text_b.dart';
import '../texts/text_e.dart';

class ImageDialog extends StatelessWidget {
  const ImageDialog({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      insetPadding: const EdgeInsets.symmetric(horizontal: 56),
      backgroundColor: AppColors.white,
      child: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Spacer(),
                SvgPicture.asset('assets/close.svg'),
              ],
            ),
            const TextE2('Add New Photo', fontSize: 16),
            const SizedBox(height: 24),
            const TextB('Add Link', fontSize: 14),
            const SizedBox(height: 10),
            TxtField(
              controller: controller,
              hintText: 'Paste your link',
              onChanged: () {},
            ),
            const SizedBox(height: 24),
            const TextB('Select from the Gallery', fontSize: 14),
            const SizedBox(height: 10),
            Container(
              height: 47,
              decoration: BoxDecoration(
                color: AppColors.pink2,
                borderRadius: BorderRadius.circular(40),
              ),
              child: CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                minSize: 47,
                child: const Center(
                  child: TextE2(
                    'Select a Photo',
                    fontSize: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
