// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoneLStruct extends BaseStruct {
  DoneLStruct({
    DateTime? doneDate,
    String? comments,
    List<String>? listDone,
  })  : _doneDate = doneDate,
        _comments = comments,
        _listDone = listDone;

  // "doneDate" field.
  DateTime? _doneDate;
  DateTime? get doneDate => _doneDate;
  set doneDate(DateTime? val) => _doneDate = val;
  bool hasDoneDate() => _doneDate != null;

  // "comments" field.
  String? _comments;
  String get comments => _comments ?? '';
  set comments(String? val) => _comments = val;
  bool hasComments() => _comments != null;

  // "listDone" field.
  List<String>? _listDone;
  List<String> get listDone => _listDone ?? const [];
  set listDone(List<String>? val) => _listDone = val;
  void updateListDone(Function(List<String>) updateFn) =>
      updateFn(_listDone ??= []);
  bool hasListDone() => _listDone != null;

  static DoneLStruct fromMap(Map<String, dynamic> data) => DoneLStruct(
        doneDate: data['doneDate'] as DateTime?,
        comments: data['comments'] as String?,
        listDone: getDataList(data['listDone']),
      );

  static DoneLStruct? maybeFromMap(dynamic data) =>
      data is Map ? DoneLStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'doneDate': _doneDate,
        'comments': _comments,
        'listDone': _listDone,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'doneDate': serializeParam(
          _doneDate,
          ParamType.DateTime,
        ),
        'comments': serializeParam(
          _comments,
          ParamType.String,
        ),
        'listDone': serializeParam(
          _listDone,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static DoneLStruct fromSerializableMap(Map<String, dynamic> data) =>
      DoneLStruct(
        doneDate: deserializeParam(
          data['doneDate'],
          ParamType.DateTime,
          false,
        ),
        comments: deserializeParam(
          data['comments'],
          ParamType.String,
          false,
        ),
        listDone: deserializeParam<String>(
          data['listDone'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DoneLStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DoneLStruct &&
        doneDate == other.doneDate &&
        comments == other.comments &&
        listEquality.equals(listDone, other.listDone);
  }

  @override
  int get hashCode => const ListEquality().hash([doneDate, comments, listDone]);
}

DoneLStruct createDoneLStruct({
  DateTime? doneDate,
  String? comments,
}) =>
    DoneLStruct(
      doneDate: doneDate,
      comments: comments,
    );
