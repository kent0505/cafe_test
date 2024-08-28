import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'models/inventory.dart';

bool onboard = true;

Future<void> getData() async {
  final prefs = await SharedPreferences.getInstance();
  // await prefs.remove('onboard');
  onboard = prefs.getBool('onboard') ?? true;
}

Future<void> saveData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setBool('onboard', false);
}

bool getButtonActive(List<TextEditingController> controllers) {
  for (TextEditingController controller in controllers) {
    if (controller.text.isEmpty) return false;
  }
  return true;
}

int getCurrentTimestamp() {
  return DateTime.now().millisecondsSinceEpoch ~/ 1000;
}

double getStatusBar(BuildContext context) {
  return MediaQuery.of(context).viewPadding.top;
}

double getBottom(BuildContext context) {
  return MediaQuery.of(context).viewPadding.bottom;
}

Future<XFile> pickImage() async {
  try {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return XFile('');
    return image;
  } catch (e) {
    log(e.toString());
    return XFile('');
  }
}

Future<String> filterValidImage(String url) async {
  final dio = Dio();
  try {
    final response = await dio.get(
      url,
      options: Options(
        receiveTimeout: const Duration(seconds: 5),
        sendTimeout: const Duration(seconds: 5),
      ),
    );
    log(response.statusCode.toString());
    if (response.statusCode == 200) return url;
    return '';
  } catch (e) {
    log(e.toString());
    return '';
  }
}

String inventorybox = 'inventorybox';
List<Inventory> inventoryList = [];

Future<void> initHive() async {
  await Hive.initFlutter();
  // await Hive.deleteBoxFromDisk(inventorybox);
  Hive.registerAdapter(InventoryAdapter());
}

Future<void> getInventories() async {
  final box = await Hive.openBox(inventorybox);
  List data = box.get('inventoryList') ?? [];
  inventoryList = data.cast<Inventory>();
}

Future<void> updateInventories() async {
  final box = await Hive.openBox(inventorybox);
  box.put('inventoryList', inventoryList);
  inventoryList = await box.get('inventoryList');
}
