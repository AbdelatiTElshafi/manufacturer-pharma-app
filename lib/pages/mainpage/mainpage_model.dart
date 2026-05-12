import '/backend/api_requests/api_calls.dart';
import '/components/header2_copy/header2_copy_widget.dart';
import '/components/loading/loading_widget.dart';
import '/components/side_bar_copy/side_bar_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'mainpage_widget.dart' show MainpageWidget;
import 'package:flutter/material.dart';

class MainpageModel extends FlutterFlowModel<MainpageWidget> {
  ///  Local state fields for this page.

  bool loadingisvisable = false;

  ///  State fields for stateful widgets in this page.

  // Model for Header2Copy component.
  late Header2CopyModel header2CopyModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (GetOrderByUser)] action in OrdersButtonContainer widget.
  ApiCallResponse? getOrdersApiResults;
  // Stores action output result for [Backend Call - API (GetOrderByUser)] action in ShipmentButtonContainer widget.
  ApiCallResponse? getCompletedOrders;
  // Stores action output result for [Backend Call - API (GetOrderByUser)] action in CancelShipmentContainer widget.
  ApiCallResponse? getShipedOrders;
  // Model for Loading component.
  late LoadingModel loadingModel;
  // Model for SideBarCopy component.
  late SideBarCopyModel sideBarCopyModel;

  @override
  void initState(BuildContext context) {
    header2CopyModel = createModel(context, () => Header2CopyModel());
    loadingModel = createModel(context, () => LoadingModel());
    sideBarCopyModel = createModel(context, () => SideBarCopyModel());
  }

  @override
  void dispose() {
    header2CopyModel.dispose();
    loadingModel.dispose();
    sideBarCopyModel.dispose();
  }
}
