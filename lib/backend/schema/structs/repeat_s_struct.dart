// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RepeatSStruct extends BaseStruct {
  RepeatSStruct({
    TypeRepeat? typeRepeat,
    int? dailyNumFreq,
    int? weeklyNumFreq,
    List<WeeklyWeekday>? weeklyWeekday,
    int? montlyNumFreq,
    List<int>? montlyMonthday,
    int? yearlyNumFreq,
    List<YearlyYearmonth>? yearlyYearmonth,
    DateTime? endDate,
  })  : _typeRepeat = typeRepeat,
        _dailyNumFreq = dailyNumFreq,
        _weeklyNumFreq = weeklyNumFreq,
        _weeklyWeekday = weeklyWeekday,
        _montlyNumFreq = montlyNumFreq,
        _montlyMonthday = montlyMonthday,
        _yearlyNumFreq = yearlyNumFreq,
        _yearlyYearmonth = yearlyYearmonth,
        _endDate = endDate;

  // "typeRepeat" field.
  TypeRepeat? _typeRepeat;
  TypeRepeat? get typeRepeat => _typeRepeat;
  set typeRepeat(TypeRepeat? val) => _typeRepeat = val;
  bool hasTypeRepeat() => _typeRepeat != null;

  // "dailyNumFreq" field.
  int? _dailyNumFreq;
  int get dailyNumFreq => _dailyNumFreq ?? 0;
  set dailyNumFreq(int? val) => _dailyNumFreq = val;
  void incrementDailyNumFreq(int amount) =>
      _dailyNumFreq = dailyNumFreq + amount;
  bool hasDailyNumFreq() => _dailyNumFreq != null;

  // "weeklyNumFreq" field.
  int? _weeklyNumFreq;
  int get weeklyNumFreq => _weeklyNumFreq ?? 0;
  set weeklyNumFreq(int? val) => _weeklyNumFreq = val;
  void incrementWeeklyNumFreq(int amount) =>
      _weeklyNumFreq = weeklyNumFreq + amount;
  bool hasWeeklyNumFreq() => _weeklyNumFreq != null;

  // "weeklyWeekday" field.
  List<WeeklyWeekday>? _weeklyWeekday;
  List<WeeklyWeekday> get weeklyWeekday => _weeklyWeekday ?? const [];
  set weeklyWeekday(List<WeeklyWeekday>? val) => _weeklyWeekday = val;
  void updateWeeklyWeekday(Function(List<WeeklyWeekday>) updateFn) =>
      updateFn(_weeklyWeekday ??= []);
  bool hasWeeklyWeekday() => _weeklyWeekday != null;

  // "montlyNumFreq" field.
  int? _montlyNumFreq;
  int get montlyNumFreq => _montlyNumFreq ?? 0;
  set montlyNumFreq(int? val) => _montlyNumFreq = val;
  void incrementMontlyNumFreq(int amount) =>
      _montlyNumFreq = montlyNumFreq + amount;
  bool hasMontlyNumFreq() => _montlyNumFreq != null;

  // "montlyMonthday" field.
  List<int>? _montlyMonthday;
  List<int> get montlyMonthday => _montlyMonthday ?? const [];
  set montlyMonthday(List<int>? val) => _montlyMonthday = val;
  void updateMontlyMonthday(Function(List<int>) updateFn) =>
      updateFn(_montlyMonthday ??= []);
  bool hasMontlyMonthday() => _montlyMonthday != null;

  // "yearlyNumFreq" field.
  int? _yearlyNumFreq;
  int get yearlyNumFreq => _yearlyNumFreq ?? 0;
  set yearlyNumFreq(int? val) => _yearlyNumFreq = val;
  void incrementYearlyNumFreq(int amount) =>
      _yearlyNumFreq = yearlyNumFreq + amount;
  bool hasYearlyNumFreq() => _yearlyNumFreq != null;

  // "yearlyYearmonth" field.
  List<YearlyYearmonth>? _yearlyYearmonth;
  List<YearlyYearmonth> get yearlyYearmonth => _yearlyYearmonth ?? const [];
  set yearlyYearmonth(List<YearlyYearmonth>? val) => _yearlyYearmonth = val;
  void updateYearlyYearmonth(Function(List<YearlyYearmonth>) updateFn) =>
      updateFn(_yearlyYearmonth ??= []);
  bool hasYearlyYearmonth() => _yearlyYearmonth != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;
  bool hasEndDate() => _endDate != null;

  static RepeatSStruct fromMap(Map<String, dynamic> data) => RepeatSStruct(
        typeRepeat: deserializeEnum<TypeRepeat>(data['typeRepeat']),
        dailyNumFreq: castToType<int>(data['dailyNumFreq']),
        weeklyNumFreq: castToType<int>(data['weeklyNumFreq']),
        weeklyWeekday: getEnumList<WeeklyWeekday>(data['weeklyWeekday']),
        montlyNumFreq: castToType<int>(data['montlyNumFreq']),
        montlyMonthday: getDataList(data['montlyMonthday']),
        yearlyNumFreq: castToType<int>(data['yearlyNumFreq']),
        yearlyYearmonth: getEnumList<YearlyYearmonth>(data['yearlyYearmonth']),
        endDate: data['endDate'] as DateTime?,
      );

  static RepeatSStruct? maybeFromMap(dynamic data) =>
      data is Map ? RepeatSStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'typeRepeat': _typeRepeat?.serialize(),
        'dailyNumFreq': _dailyNumFreq,
        'weeklyNumFreq': _weeklyNumFreq,
        'weeklyWeekday': _weeklyWeekday?.map((e) => e.serialize()).toList(),
        'montlyNumFreq': _montlyNumFreq,
        'montlyMonthday': _montlyMonthday,
        'yearlyNumFreq': _yearlyNumFreq,
        'yearlyYearmonth': _yearlyYearmonth?.map((e) => e.serialize()).toList(),
        'endDate': _endDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'typeRepeat': serializeParam(
          _typeRepeat,
          ParamType.Enum,
        ),
        'dailyNumFreq': serializeParam(
          _dailyNumFreq,
          ParamType.int,
        ),
        'weeklyNumFreq': serializeParam(
          _weeklyNumFreq,
          ParamType.int,
        ),
        'weeklyWeekday': serializeParam(
          _weeklyWeekday,
          ParamType.Enum,
          true,
        ),
        'montlyNumFreq': serializeParam(
          _montlyNumFreq,
          ParamType.int,
        ),
        'montlyMonthday': serializeParam(
          _montlyMonthday,
          ParamType.int,
          true,
        ),
        'yearlyNumFreq': serializeParam(
          _yearlyNumFreq,
          ParamType.int,
        ),
        'yearlyYearmonth': serializeParam(
          _yearlyYearmonth,
          ParamType.Enum,
          true,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static RepeatSStruct fromSerializableMap(Map<String, dynamic> data) =>
      RepeatSStruct(
        typeRepeat: deserializeParam<TypeRepeat>(
          data['typeRepeat'],
          ParamType.Enum,
          false,
        ),
        dailyNumFreq: deserializeParam(
          data['dailyNumFreq'],
          ParamType.int,
          false,
        ),
        weeklyNumFreq: deserializeParam(
          data['weeklyNumFreq'],
          ParamType.int,
          false,
        ),
        weeklyWeekday: deserializeParam<WeeklyWeekday>(
          data['weeklyWeekday'],
          ParamType.Enum,
          true,
        ),
        montlyNumFreq: deserializeParam(
          data['montlyNumFreq'],
          ParamType.int,
          false,
        ),
        montlyMonthday: deserializeParam<int>(
          data['montlyMonthday'],
          ParamType.int,
          true,
        ),
        yearlyNumFreq: deserializeParam(
          data['yearlyNumFreq'],
          ParamType.int,
          false,
        ),
        yearlyYearmonth: deserializeParam<YearlyYearmonth>(
          data['yearlyYearmonth'],
          ParamType.Enum,
          true,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'RepeatSStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RepeatSStruct &&
        typeRepeat == other.typeRepeat &&
        dailyNumFreq == other.dailyNumFreq &&
        weeklyNumFreq == other.weeklyNumFreq &&
        listEquality.equals(weeklyWeekday, other.weeklyWeekday) &&
        montlyNumFreq == other.montlyNumFreq &&
        listEquality.equals(montlyMonthday, other.montlyMonthday) &&
        yearlyNumFreq == other.yearlyNumFreq &&
        listEquality.equals(yearlyYearmonth, other.yearlyYearmonth) &&
        endDate == other.endDate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        typeRepeat,
        dailyNumFreq,
        weeklyNumFreq,
        weeklyWeekday,
        montlyNumFreq,
        montlyMonthday,
        yearlyNumFreq,
        yearlyYearmonth,
        endDate
      ]);
}

RepeatSStruct createRepeatSStruct({
  TypeRepeat? typeRepeat,
  int? dailyNumFreq,
  int? weeklyNumFreq,
  int? montlyNumFreq,
  int? yearlyNumFreq,
  DateTime? endDate,
}) =>
    RepeatSStruct(
      typeRepeat: typeRepeat,
      dailyNumFreq: dailyNumFreq,
      weeklyNumFreq: weeklyNumFreq,
      montlyNumFreq: montlyNumFreq,
      yearlyNumFreq: yearlyNumFreq,
      endDate: endDate,
    );
