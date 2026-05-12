import '/backend/api_requests/api_calls.dart';
import '/components/header/header_widget.dart';
import '/components/loading/loading_widget.dart';
import '/components/side_bar_copy/side_bar_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'shipment_page_widget.dart' show ShipmentPageWidget;
import 'package:flutter/material.dart';

class ShipmentPageModel extends FlutterFlowModel<ShipmentPageWidget> {
  ///  Local state fields for this page.

  String? shipmentScanedsscc;

  String? orderno;

  String? ssccState;

  String? bath;

  String? customers;

  String? totolitems;

  bool loadingisvisable = false;

  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for OrdersDropDown widget.
  String? ordersDropDownValue;
  FormFieldController<String>? ordersDropDownValueController;
  var sannedCode = '';
  // Stores action output result for [Custom Action - parseGs1Scan] action in ScanButton widget.
  dynamic gS1ParsedData;
  // Stores action output result for [Backend Call - API (Confirm Shipment)] action in ConfirmButton widget.
  ApiCallResponse? confirmShipment;
  // Model for Loading component.
  late LoadingModel loadingModel;
  // Model for SideBarCopy component.
  late SideBarCopyModel sideBarCopyModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    loadingModel = createModel(context, () => LoadingModel());
    sideBarCopyModel = createModel(context, () => SideBarCopyModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    loadingModel.dispose();
    sideBarCopyModel.dispose();
  }

  /// Action blocks.
  Future<bool?> getOrderDetalis(
    BuildContext context, {
    String? orderNumber,
  }) async {
    ApiCallResponse? getOrderDetailsResp;

    loadingisvisable = true;
    getOrderDetailsResp = await OrdersAPIsGroup.getOrderDetailsCall.call(
      orderNO: orderNumber,
    );

    if ((getOrderDetailsResp.succeeded ?? true)) {
      loadingisvisable = false;
      orderno = orderNumber;
      ssccState = orderNumber;
      bath = '000';
      customers = OrdersAPIsGroup.getOrderDetailsCall.customer(
        (getOrderDetailsResp.jsonBody ?? ''),
      );
      totolitems = '110';
    } else {
      loadingisvisable = false;
    }

    loadingisvisable = false;
    return true;
  }
}
