import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'connect_system_sheet_widget.dart' show ConnectSystemSheetWidget;
import 'package:flutter/material.dart';

class ConnectSystemSheetModel
    extends FlutterFlowModel<ConnectSystemSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Stores action output result for [Backend Call - API (getTokenElitech)] action in Button widget.
  ApiCallResponse? tokenresult;
  // Stores action output result for [Backend Call - API (getTempElitech)] action in Button widget.
  ApiCallResponse? tempresult;
  // Stores action output result for [Backend Call - API (getTokenTzone)] action in Button widget.
  ApiCallResponse? tokenTzone;
  // Stores action output result for [Backend Call - API (getTempTzone)] action in Button widget.
  ApiCallResponse? tempTzone;
  // Stores action output result for [Backend Call - API (getOrgEfento)] action in Button widget.
  ApiCallResponse? getOrgEfentoResult;
  // Stores action output result for [Backend Call - API (getLocationEfento)] action in Button widget.
  ApiCallResponse? getLocationEfentoResult;
  // Stores action output result for [Backend Call - API (getMeasurementsEfento)] action in Button widget.
  ApiCallResponse? getMeasurementsEfentoResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();
  }
}
