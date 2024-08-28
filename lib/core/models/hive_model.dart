// import 'package:hive_flutter/hive_flutter.dart';

// @HiveType(typeId: 0)
class HiveModel {
//   @HiveField(0)
  final int id;
//   @HiveField(1)
  bool title;

  HiveModel({
    required this.id,
    required this.title,
  });
}

// class HiveModelAdapter extends TypeAdapter<HiveModel> {
//   @override
//   final typeId = 0;

//   @override
//   HiveModel read(BinaryReader reader) {
//     return HiveModel(
//       id: reader.read(),
//       title: reader.read(),
//     );
//   }

//   @override
//   void write(BinaryWriter writer, HiveModel obj) {
//     writer.write(obj.id);
//     writer.write(obj.title);
//   }
// }
