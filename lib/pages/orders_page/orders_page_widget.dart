import '/components/header/header_widget.dart';
import '/components/order_card/order_card_widget.dart';
import '/components/side_bar_copy/side_bar_copy_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'orders_page_model.dart';
export 'orders_page_model.dart';

class OrdersPageWidget extends StatefulWidget {
  const OrdersPageWidget({
    super.key,
    required this.orders,
    required this.customer,
    required this.status,
    required this.permit,
  });

  final List<String>? orders;
  final List<String>? customer;
  final List<String>? status;
  final List<int>? permit;

  static String routeName = 'OrdersPage';
  static String routePath = '/ordersPage';

  @override
  State<OrdersPageWidget> createState() => _OrdersPageWidgetState();
}

class _OrdersPageWidgetState extends State<OrdersPageWidget> {
  late OrdersPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrdersPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.sideBarCopyModel,
            updateCallback: () => safeSetState(() {}),
            child: SideBarCopyWidget(),
          ),
        ),
        body: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/ChatGPT_Image_May_14,_2026,_07_04_57_PM.png',
                  ).image,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.headerModel,
                  updateCallback: () => safeSetState(() {}),
                  child: HeaderWidget(
                    pagename: 'Orders',
                    showMenu: () async {
                      scaffoldKey.currentState!.openDrawer();
                    },
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(5.0, 10.0, 5.0, 5.0),
                    child: Container(
                      width: double.infinity,
                      height: 600.0,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Builder(
                        builder: (context) {
                          final itemNo = widget.orders!.toList();

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            scrollDirection: Axis.vertical,
                            itemCount: itemNo.length,
                            itemBuilder: (context, itemNoIndex) {
                              final itemNoItem = itemNo[itemNoIndex];
                              return wrapWithModel(
                                model: _model.orderCardModels.getModel(
                                  itemNoItem,
                                  itemNoIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: OrderCardWidget(
                                  key: Key(
                                    'Keyrsi_${itemNoItem}',
                                  ),
                                  order: (widget.orders!
                                      .elementAtOrNull(itemNoIndex))!,
                                  customer: (widget.customer!
                                      .elementAtOrNull(itemNoIndex))!,
                                  status: (widget.status!
                                      .elementAtOrNull(itemNoIndex))!,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
