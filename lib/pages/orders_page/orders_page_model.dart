import '/components/header/header_widget.dart';
import '/components/order_card/order_card_widget.dart';
import '/components/side_bar_copy/side_bar_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'orders_page_widget.dart' show OrdersPageWidget;
import 'package:flutter/material.dart';

class OrdersPageModel extends FlutterFlowModel<OrdersPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Models for OrderCard dynamic component.
  late FlutterFlowDynamicModels<OrderCardModel> orderCardModels;
  // Model for SideBarCopy component.
  late SideBarCopyModel sideBarCopyModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    orderCardModels = FlutterFlowDynamicModels(() => OrderCardModel());
    sideBarCopyModel = createModel(context, () => SideBarCopyModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    orderCardModels.dispose();
    sideBarCopyModel.dispose();
  }
}
