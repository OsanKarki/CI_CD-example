import 'package:hive/hive.dart';

class HiveService {
  // This method adds data to the Hive box
  Future<void> addData<T>(String boxName, dynamic key, T value) async {
    var box = await Hive.openBox<T>(boxName);
    await box.put(key, value);
  }

  // This method retrieves data from the Hive box
  Future<T?> getData<T>(String boxName, dynamic key) async {
    var box = await Hive.openBox<T>(boxName);
    return box.get(key);
  }

  // This method retrieves all data from the Hive box
  Future<List<T>> getAllData<T>(String boxName) async {
    var box = await Hive.openBox<T>(boxName);
    return box.values.toList();
  }

  // This method deletes a specific entry from the Hive box
  Future<void> deleteData<T>(String boxName, String key) async {
    var box = await Hive.openBox<T>(boxName);
    await box.delete(key);
  }

  // This method deletes all data in the box
  Future<void> clearBox<T>(String boxName) async {
    var box = await Hive.openBox<T>(boxName);
    await box.clear();
  }
}
