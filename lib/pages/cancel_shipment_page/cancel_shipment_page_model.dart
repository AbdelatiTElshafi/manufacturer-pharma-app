import '/backend/api_requests/api_calls.dart';
import '/components/header/header_widget.dart';
import '/components/loading/loading_widget.dart';
import '/components/side_bar/side_bar_widget.dart';
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
  var sscc = '';
  // Stores action output result for [Custom Action - parseGs1Scan] action in ScanButton widget.
  dynamic json;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Loading component.
  late LoadingModel loadingModel;
  // Model for SideBar component.
  late SideBarModel sideBarModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    loadingModel = createModel(context, () => LoadingModel());
    sideBarModel = createModel(context, () => SideBarModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    loadingModel.dispose();
    sideBarModel.dispose();
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
