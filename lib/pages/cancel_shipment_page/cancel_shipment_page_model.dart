import '/backend/api_requests/api_calls.dart';
import '/components/header/header_widget.dart';
import '/components/loading/loading_widget.dart';
import '/components/side_bar_copy/side_bar_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cancel_shipment_page_widget.dart' show CancelShipmentPageWidget;
import 'package:flutter/material.dart';

class CancelShipmentPageModel
    extends FlutterFlowModel<CancelShipmentPageWidget> {
  ///  Local state fields for this page.

  String? shipmentScanedsscc;

  String? orderno;

  String? ssccState;

  String? batch;

  String? customers;

  int? totolitems;

  bool loadingisvisable = false;

  List<String> shippedorders = [];
  void addToShippedorders(String item) => shippedorders.add(item);
  void removeFromShippedorders(String item) => shippedorders.remove(item);
  void removeAtIndexFromShippedorders(int index) =>
      shippedorders.removeAt(index);
  void insertAtIndexInShippedorders(int index, String item) =>
      shippedorders.insert(index, item);
  void updateShippedordersAtIndex(int index, Function(String) updateFn) =>
      shippedorders[index] = updateFn(shippedorders[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (GetOrderByUser)] action in CancelShipmentPage widget.
  ApiCallResponse? getShippedOrdersResp;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for OrdersDropDown widget.
  String? ordersDropDownValue;
  FormFieldController<String>? ordersDropDownValueController;
  var scannedCode = '';
  // Stores action output result for [Custom Action - parseGs1Scan] action in ScanButton widget.
  dynamic gS1ParsedData;
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
  Future<bool?> getOrderDetails(
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
      ssccState = OrdersAPIsGroup.getOrderDetailsCall.sscc(
        (getOrderDetailsResp.jsonBody ?? ''),
      );
    } else {
      loadingisvisable = false;
    }

    loadingisvisable = false;
    return false;
  }
}
