import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _tasks = (await secureStorage.getStringList('ff_tasks'))?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _tasks;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _firstEnter = true;
  bool get firstEnter => _firstEnter;
  set firstEnter(bool value) {
    _firstEnter = value;
  }

  DateTime? _dateSelected = DateTime.fromMillisecondsSinceEpoch(39600000);
  DateTime? get dateSelected => _dateSelected;
  set dateSelected(DateTime? value) {
    _dateSelected = value;
  }

  List<dynamic> _tasks = [
    jsonDecode(
        '{"id":"abc123","taskType":"todo","name":"Sala Pesi","desc":"NONOBBLIGATORIO","iconURL":"NONOBBLIGATORIO","color":"#FFFFFF","startDate":"08/01/2024","startTime":"15:15","endTime":"NONOBBLIGATORIO","repeat":true,"repeatSettings":{"typeRepeat":"weekly","dailyNumFreq":0,"weeklyNumFreq":1,"weeklyDayWeek":["1","3","5"],"monthlyNumFreq":0,"monthlyDayNumber":[1,12,16,24,31],"yearlyNumFreq":0,"yearlyMonth":["1","4","7","8","11","12"],"endDate":"NONOBBLIGATORIO"},"notificationSetted":[{"id1":{"secondsFromStart":"-300","type":"basic"},"id2":{"secondsFromStart":"0","type":"important"}}],"tags":["Salute"],"priority":"none","image":"NONOBBLIGATORIO","url":"NONOBBLIGATORIO","listSubcategories":["Bere acqua","Seguire la scheda"],"done":[{"08/01/2024":{"comments":"Fatto il 08/01/2024","subcatDone":["Bere acqua"]},"12/01/2024":{"subcatDone":["Seguire la scheda"]}}]}')
  ];
  List<dynamic> get tasks => _tasks;
  set tasks(List<dynamic> value) {
    _tasks = value;
    secureStorage.setStringList(
        'ff_tasks', value.map((x) => jsonEncode(x)).toList());
  }

  void deleteTasks() {
    secureStorage.delete(key: 'ff_tasks');
  }

  void addToTasks(dynamic value) {
    _tasks.add(value);
    secureStorage.setStringList(
        'ff_tasks', _tasks.map((x) => jsonEncode(x)).toList());
  }

  void removeFromTasks(dynamic value) {
    _tasks.remove(value);
    secureStorage.setStringList(
        'ff_tasks', _tasks.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromTasks(int index) {
    _tasks.removeAt(index);
    secureStorage.setStringList(
        'ff_tasks', _tasks.map((x) => jsonEncode(x)).toList());
  }

  void updateTasksAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    _tasks[index] = updateFn(_tasks[index]);
    secureStorage.setStringList(
        'ff_tasks', _tasks.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInTasks(int index, dynamic value) {
    _tasks.insert(index, value);
    secureStorage.setStringList(
        'ff_tasks', _tasks.map((x) => jsonEncode(x)).toList());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
