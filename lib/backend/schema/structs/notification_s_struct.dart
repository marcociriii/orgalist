// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationSStruct extends BaseStruct {
  NotificationSStruct({
    int? secondsFromStart,
    NotifType? type,
  })  : _secondsFromStart = secondsFromStart,
        _type = type;

  // "secondsFromStart" field.
  int? _secondsFromStart;
  int get secondsFromStart => _secondsFromStart ?? 0;
  set secondsFromStart(int? val) => _secondsFromStart = val;
  void incrementSecondsFromStart(int amount) =>
      _secondsFromStart = secondsFromStart + amount;
  bool hasSecondsFromStart() => _secondsFromStart != null;

  // "type" field.
  NotifType? _type;
  NotifType? get type => _type;
  set type(NotifType? val) => _type = val;
  bool hasType() => _type != null;

  static NotificationSStruct fromMap(Map<String, dynamic> data) =>
      NotificationSStruct(
        secondsFromStart: castToType<int>(data['secondsFromStart']),
        type: deserializeEnum<NotifType>(data['type']),
      );

  static NotificationSStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationSStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'secondsFromStart': _secondsFromStart,
        'type': _type?.serialize(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'secondsFromStart': serializeParam(
          _secondsFromStart,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.Enum,
        ),
      }.withoutNulls;

  static NotificationSStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationSStruct(
        secondsFromStart: deserializeParam(
          data['secondsFromStart'],
          ParamType.int,
          false,
        ),
        type: deserializeParam<NotifType>(
          data['type'],
          ParamType.Enum,
          false,
        ),
      );

  @override
  String toString() => 'NotificationSStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationSStruct &&
        secondsFromStart == other.secondsFromStart &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([secondsFromStart, type]);
}

NotificationSStruct createNotificationSStruct({
  int? secondsFromStart,
  NotifType? type,
}) =>
    NotificationSStruct(
      secondsFromStart: secondsFromStart,
      type: type,
    );
