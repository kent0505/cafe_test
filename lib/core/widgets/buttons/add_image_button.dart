import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../config/app_colors.dart';
import '../texts/text_b.dart';

class AddImageButton extends StatelessWidget {
  const AddImageButton({
    super.key,
    required this.image,
    required this.onPressed,
  });

  final String image;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image.isNotEmpty)
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.file(
                    File(image),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return CachedNetworkImage(
                        imageUrl: image,
                        fit: BoxFit.cover,
                        errorWidget: (context, url, error) {
                          return Container();
                        },
                      );
                    },
                  ),
                ),
              )
            else
              const Center(
                child: TextB(
                  '+',
                  fontSize: 14,
                  color: AppColors.textField,
                ),
              )
          ],
        ),
      ),
    );
  }
}
