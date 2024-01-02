import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<dynamic> showList = [];
  void addToShowList(dynamic item) => showList.add(item);
  void removeFromShowList(dynamic item) => showList.remove(item);
  void removeAtIndexFromShowList(int index) => showList.removeAt(index);
  void insertAtIndexInShowList(int index, dynamic item) =>
      showList.insert(index, item);
  void updateShowListAtIndex(int index, Function(dynamic) updateFn) =>
      showList[index] = updateFn(showList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
