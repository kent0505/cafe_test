import 'package:cafe_test/core/widgets/buttons/primary_button.dart';
import 'package:cafe_test/core/widgets/dialogs/image_dialog.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/buttons/add_image_button.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/textfields/number_field.dart';
import '../../../core/widgets/textfields/txt_field.dart';
import '../../../core/widgets/texts/text_b.dart';

class InventoryAddPage extends StatefulWidget {
  const InventoryAddPage({super.key});

  @override
  State<InventoryAddPage> createState() => _InventoryAddPageState();
}

class _InventoryAddPageState extends State<InventoryAddPage> {
  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();
  final controller4 = TextEditingController();

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          const CustomAppbar(title: 'Add a New Product'),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextB('Product Photo', fontSize: 14),
                const SizedBox(height: 10),
                AddImageButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return ImageDialog(
                          controller: controller4,
                        );
                      },
                    );
                  },
                ),
                const SizedBox(height: 24),
                const TextB(
                  'Name of the Product',
                  fontSize: 14,
                ),
                const SizedBox(height: 10),
                TxtField(
                  controller: controller1,
                  onChanged: () {},
                ),
                const SizedBox(height: 24),
                const TextB(
                  'Cost Price',
                  fontSize: 14,
                ),
                const SizedBox(height: 10),
                NumberField(
                  controller: controller2,
                  onChanged: () {},
                ),
                const SizedBox(height: 24),
                const TextB(
                  'The Cost of the Sale',
                  fontSize: 14,
                ),
                const SizedBox(height: 10),
                NumberField(
                  controller: controller3,
                  onChanged: () {},
                ),
                const SizedBox(height: 24),
                PrimaryButton(
                  title: 'Save',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
