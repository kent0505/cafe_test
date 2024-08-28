import 'package:flutter/material.dart';

import '../../../core/config/app_colors.dart';

class CafeCard extends StatelessWidget {
  const CafeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 156,
          height: 194,
          padding: const EdgeInsets.all(14),
          margin: const EdgeInsets.only(right: 14),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/790d/e286/47891c87e60a26a30d91026a7d369d86?Expires=1725840000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T6im~9HUdyx7k1~igxwfz4uGcvX07u5GVsPLv3bb9lU4o1AX6vxVex6-~5MADeh8XB7XOArr1rIRJCGDCN6nT~N4CIlafy8m7~tIn33PU~JFBTOHPsc38U75FfvFJpV1aqggFSkPlLFn1GOkADwW3g31smZiMKW-f~5NLLfgmHqPGkRb8hSTJ5OO~cP2WZ9VHF-OCDqEbUqCWuL1LXUDUmKA~viHm7EbBEdP8lSywF0QUDzWhg2TGqYYJrEoBdhfTU9T2tus5N4fcKxyb7NgMXZwehnnYA60b9TuUGOjkeE1~OFpZ863ZP2zlTWA5mzIwyMs7Zmg~x~cJvf-MibuMA__',
                  height: 102,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Cafe U asd ad asda sd asdas das d',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontFamily: Fonts.extra,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                '1017 U St NW, Washington asd asd asd asdasd asd',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: AppColors.purple1,
                  fontSize: 13,
                  fontFamily: Fonts.regular,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
