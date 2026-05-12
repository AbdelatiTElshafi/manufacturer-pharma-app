import '/flutter_flow/flutter_flow_util.dart';
import 'side_bar_copy_widget.dart' show SideBarCopyWidget;
import 'package:flutter/material.dart';

class SideBarCopyModel extends FlutterFlowModel<SideBarCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchTextController;
  String? Function(BuildContext, String?)? searchTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFocusNode?.dispose();
    searchTextController?.dispose();
  }
}
