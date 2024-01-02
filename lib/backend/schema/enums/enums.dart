import 'package:collection/collection.dart';

enum TypeRepeat {
  daily,
  weekly,
  montly,
  yearly,
}

enum WeeklyWeekday {
  lun,
  mar,
  mer,
  gio,
  ven,
  sab,
  dom,
}

enum YearlyYearmonth {
  gen,
  feb,
  mar,
  apr,
  mag,
  giu,
  lug,
  ago,
  set,
  ott,
  nov,
  dic,
}

enum TaskType {
  todo,
  counter,
  note,
  image,
}

enum NotifType {
  basic,
  important,
}

enum Priority {
  none,
  low,
  med,
  high,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (TypeRepeat):
      return TypeRepeat.values.deserialize(value) as T?;
    case (WeeklyWeekday):
      return WeeklyWeekday.values.deserialize(value) as T?;
    case (YearlyYearmonth):
      return YearlyYearmonth.values.deserialize(value) as T?;
    case (TaskType):
      return TaskType.values.deserialize(value) as T?;
    case (NotifType):
      return NotifType.values.deserialize(value) as T?;
    case (Priority):
      return Priority.values.deserialize(value) as T?;
    default:
      return null;
  }
}
