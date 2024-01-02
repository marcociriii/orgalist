// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskStruct extends BaseStruct {
  TaskStruct({
    TaskType? taskType,
    String? name,
    String? desc,
    String? iconURL,
    Color? color,
    DateTime? startDate,
    DateTime? startTime,
    DateTime? endTime,
    bool? repeat,
    RepeatSStruct? repeatSettings,
    List<NotificationSStruct>? notificationSettings,
    List<String>? tags,
    Priority? priority,
    String? image,
    String? url,
    List<String>? listSubcategories,
    List<DoneLStruct>? done,
  })  : _taskType = taskType,
        _name = name,
        _desc = desc,
        _iconURL = iconURL,
        _color = color,
        _startDate = startDate,
        _startTime = startTime,
        _endTime = endTime,
        _repeat = repeat,
        _repeatSettings = repeatSettings,
        _notificationSettings = notificationSettings,
        _tags = tags,
        _priority = priority,
        _image = image,
        _url = url,
        _listSubcategories = listSubcategories,
        _done = done;

  // "taskType" field.
  TaskType? _taskType;
  TaskType? get taskType => _taskType;
  set taskType(TaskType? val) => _taskType = val;
  bool hasTaskType() => _taskType != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  set desc(String? val) => _desc = val;
  bool hasDesc() => _desc != null;

  // "iconURL" field.
  String? _iconURL;
  String get iconURL => _iconURL ?? '';
  set iconURL(String? val) => _iconURL = val;
  bool hasIconURL() => _iconURL != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  set color(Color? val) => _color = val;
  bool hasColor() => _color != null;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;
  bool hasStartDate() => _startDate != null;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? val) => _startTime = val;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? val) => _endTime = val;
  bool hasEndTime() => _endTime != null;

  // "repeat" field.
  bool? _repeat;
  bool get repeat => _repeat ?? false;
  set repeat(bool? val) => _repeat = val;
  bool hasRepeat() => _repeat != null;

  // "repeatSettings" field.
  RepeatSStruct? _repeatSettings;
  RepeatSStruct get repeatSettings => _repeatSettings ?? RepeatSStruct();
  set repeatSettings(RepeatSStruct? val) => _repeatSettings = val;
  void updateRepeatSettings(Function(RepeatSStruct) updateFn) =>
      updateFn(_repeatSettings ??= RepeatSStruct());
  bool hasRepeatSettings() => _repeatSettings != null;

  // "notificationSettings" field.
  List<NotificationSStruct>? _notificationSettings;
  List<NotificationSStruct> get notificationSettings =>
      _notificationSettings ?? const [];
  set notificationSettings(List<NotificationSStruct>? val) =>
      _notificationSettings = val;
  void updateNotificationSettings(
          Function(List<NotificationSStruct>) updateFn) =>
      updateFn(_notificationSettings ??= []);
  bool hasNotificationSettings() => _notificationSettings != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  set tags(List<String>? val) => _tags = val;
  void updateTags(Function(List<String>) updateFn) => updateFn(_tags ??= []);
  bool hasTags() => _tags != null;

  // "priority" field.
  Priority? _priority;
  Priority? get priority => _priority;
  set priority(Priority? val) => _priority = val;
  bool hasPriority() => _priority != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "url" field.
  String? _url;
  String get url => _url ?? '';
  set url(String? val) => _url = val;
  bool hasUrl() => _url != null;

  // "listSubcategories" field.
  List<String>? _listSubcategories;
  List<String> get listSubcategories => _listSubcategories ?? const [];
  set listSubcategories(List<String>? val) => _listSubcategories = val;
  void updateListSubcategories(Function(List<String>) updateFn) =>
      updateFn(_listSubcategories ??= []);
  bool hasListSubcategories() => _listSubcategories != null;

  // "done" field.
  List<DoneLStruct>? _done;
  List<DoneLStruct> get done => _done ?? const [];
  set done(List<DoneLStruct>? val) => _done = val;
  void updateDone(Function(List<DoneLStruct>) updateFn) =>
      updateFn(_done ??= []);
  bool hasDone() => _done != null;

  static TaskStruct fromMap(Map<String, dynamic> data) => TaskStruct(
        taskType: deserializeEnum<TaskType>(data['taskType']),
        name: data['name'] as String?,
        desc: data['desc'] as String?,
        iconURL: data['iconURL'] as String?,
        color: getSchemaColor(data['color']),
        startDate: data['startDate'] as DateTime?,
        startTime: data['startTime'] as DateTime?,
        endTime: data['endTime'] as DateTime?,
        repeat: data['repeat'] as bool?,
        repeatSettings: RepeatSStruct.maybeFromMap(data['repeatSettings']),
        notificationSettings: getStructList(
          data['notificationSettings'],
          NotificationSStruct.fromMap,
        ),
        tags: getDataList(data['tags']),
        priority: deserializeEnum<Priority>(data['priority']),
        image: data['image'] as String?,
        url: data['url'] as String?,
        listSubcategories: getDataList(data['listSubcategories']),
        done: getStructList(
          data['done'],
          DoneLStruct.fromMap,
        ),
      );

  static TaskStruct? maybeFromMap(dynamic data) =>
      data is Map ? TaskStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'taskType': _taskType?.serialize(),
        'name': _name,
        'desc': _desc,
        'iconURL': _iconURL,
        'color': _color,
        'startDate': _startDate,
        'startTime': _startTime,
        'endTime': _endTime,
        'repeat': _repeat,
        'repeatSettings': _repeatSettings?.toMap(),
        'notificationSettings':
            _notificationSettings?.map((e) => e.toMap()).toList(),
        'tags': _tags,
        'priority': _priority?.serialize(),
        'image': _image,
        'url': _url,
        'listSubcategories': _listSubcategories,
        'done': _done?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'taskType': serializeParam(
          _taskType,
          ParamType.Enum,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'desc': serializeParam(
          _desc,
          ParamType.String,
        ),
        'iconURL': serializeParam(
          _iconURL,
          ParamType.String,
        ),
        'color': serializeParam(
          _color,
          ParamType.Color,
        ),
        'startDate': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
        'repeat': serializeParam(
          _repeat,
          ParamType.bool,
        ),
        'repeatSettings': serializeParam(
          _repeatSettings,
          ParamType.DataStruct,
        ),
        'notificationSettings': serializeParam(
          _notificationSettings,
          ParamType.DataStruct,
          true,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
          true,
        ),
        'priority': serializeParam(
          _priority,
          ParamType.Enum,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'url': serializeParam(
          _url,
          ParamType.String,
        ),
        'listSubcategories': serializeParam(
          _listSubcategories,
          ParamType.String,
          true,
        ),
        'done': serializeParam(
          _done,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static TaskStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskStruct(
        taskType: deserializeParam<TaskType>(
          data['taskType'],
          ParamType.Enum,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        desc: deserializeParam(
          data['desc'],
          ParamType.String,
          false,
        ),
        iconURL: deserializeParam(
          data['iconURL'],
          ParamType.String,
          false,
        ),
        color: deserializeParam(
          data['color'],
          ParamType.Color,
          false,
        ),
        startDate: deserializeParam(
          data['startDate'],
          ParamType.DateTime,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.DateTime,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.DateTime,
          false,
        ),
        repeat: deserializeParam(
          data['repeat'],
          ParamType.bool,
          false,
        ),
        repeatSettings: deserializeStructParam(
          data['repeatSettings'],
          ParamType.DataStruct,
          false,
          structBuilder: RepeatSStruct.fromSerializableMap,
        ),
        notificationSettings: deserializeStructParam<NotificationSStruct>(
          data['notificationSettings'],
          ParamType.DataStruct,
          true,
          structBuilder: NotificationSStruct.fromSerializableMap,
        ),
        tags: deserializeParam<String>(
          data['tags'],
          ParamType.String,
          true,
        ),
        priority: deserializeParam<Priority>(
          data['priority'],
          ParamType.Enum,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        url: deserializeParam(
          data['url'],
          ParamType.String,
          false,
        ),
        listSubcategories: deserializeParam<String>(
          data['listSubcategories'],
          ParamType.String,
          true,
        ),
        done: deserializeStructParam<DoneLStruct>(
          data['done'],
          ParamType.DataStruct,
          true,
          structBuilder: DoneLStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'TaskStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TaskStruct &&
        taskType == other.taskType &&
        name == other.name &&
        desc == other.desc &&
        iconURL == other.iconURL &&
        color == other.color &&
        startDate == other.startDate &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        repeat == other.repeat &&
        repeatSettings == other.repeatSettings &&
        listEquality.equals(notificationSettings, other.notificationSettings) &&
        listEquality.equals(tags, other.tags) &&
        priority == other.priority &&
        image == other.image &&
        url == other.url &&
        listEquality.equals(listSubcategories, other.listSubcategories) &&
        listEquality.equals(done, other.done);
  }

  @override
  int get hashCode => const ListEquality().hash([
        taskType,
        name,
        desc,
        iconURL,
        color,
        startDate,
        startTime,
        endTime,
        repeat,
        repeatSettings,
        notificationSettings,
        tags,
        priority,
        image,
        url,
        listSubcategories,
        done
      ]);
}

TaskStruct createTaskStruct({
  TaskType? taskType,
  String? name,
  String? desc,
  String? iconURL,
  Color? color,
  DateTime? startDate,
  DateTime? startTime,
  DateTime? endTime,
  bool? repeat,
  RepeatSStruct? repeatSettings,
  Priority? priority,
  String? image,
  String? url,
}) =>
    TaskStruct(
      taskType: taskType,
      name: name,
      desc: desc,
      iconURL: iconURL,
      color: color,
      startDate: startDate,
      startTime: startTime,
      endTime: endTime,
      repeat: repeat,
      repeatSettings: repeatSettings ?? RepeatSStruct(),
      priority: priority,
      image: image,
      url: url,
    );
