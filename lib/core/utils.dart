import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

double navBarHeight = 60;
String boxName = 'hivemodelbox';

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

// List<HiveModel> modelsList = [];

// Future<List<HiveModel>> getModels() async {
//   final box = await Hive.openBox(boxName);
//   List data = box.get('modelsList') ?? [];
//   modelsList = data.cast<HiveModel>();
//   log(modelsList.length.toString());
//   return modelsList;
// }

// Future<List<HiveModel>> updateModels() async {
//   final box = await Hive.openBox(boxName);
//   box.put('modelsList', modelsList);
//   modelsList = await box.get('modelsList');
//   return modelsList;
// }

