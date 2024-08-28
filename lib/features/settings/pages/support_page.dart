import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils.dart';
import '../../../core/config/app_colors.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/textfields/txt_field.dart';
import '../../../core/widgets/texts/text_b.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();

  bool active = false;

  void checkActive() {
    setState(() {
      active = getButtonActive([
        controller1,
        controller2,
        controller3,
      ]);
    });
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      resize: true,
      body: Column(
        children: [
          const CustomAppbar(
            title: 'Support',
            settings: true,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: [
                const SizedBox(height: 12),
                const TextB('Your Name', fontSize: 14),
                const SizedBox(height: 10),
                TxtField(
                  controller: controller1,
                  onChanged: checkActive,
                ),
                const SizedBox(height: 24),
                const TextB('Your Email', fontSize: 14),
                const SizedBox(height: 10),
                TxtField(
                  controller: controller2,
                  email: true,
                  onChanged: checkActive,
                ),
                const SizedBox(height: 24),
                const TextB('Your Message', fontSize: 14),
                const SizedBox(height: 10),
                TxtField(
                  controller: controller3,
                  multiline: true,
                  onChanged: checkActive,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    CupertinoButton(
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      minSize: 40,
                      child: Container(
                        height: 40,
                        width: 160,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/attach.svg'),
                            const SizedBox(width: 10),
                            const TextB2('Attach a File', fontSize: 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                PrimaryButton(
                  title: 'Send',
                  active: active,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
