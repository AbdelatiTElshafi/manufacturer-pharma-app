import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'order_card_model.dart';
export 'order_card_model.dart';

/// Create a reusable FlutterFlow component named "OrderCard" with the
/// following layout:
///
/// - Outer container:
///   - Background: white.
///
/// - Rounded corners: 12px.
///   - Shadow: subtle for card effect.
///   - Padding: 16px.
///   - Height: around 100px (responsive).
/// - Inside: Row with two main sections:
///
///   1. Left section (Expanded):
///      - Column, crossAxisAlignment: start.
///        - Text: "Order #12345" — bold, size 16, color #2E3192.
///        - Text: "Customer: ACME Pharma" — regular, size 14, grey (#6B7280).
///        - Text: "Product: Paracetamol 500mg" — regular, size 14, grey
/// (#6B7280).
///        - Text: "Packages: 24" — medium weight, size 14, color #F15B29.
///
///   2. Right section:
///      - Elevated button labeled "Start Pack".
///        - Background color: #F15B29.
///        - Text color: white, bold.
///        - Rounded corners: 8px.
///        - Padding: horizontal 12px, vertical 8px.
///        - OnTap action: Trigger a navigation or custom action
/// (placeholder).
///
/// - The component should accept parameters:
///   - orderNumber (String)
///   - customerName (String)
///   - productName (String)
///   - packageCount (int)
///   - onStartPack (Action)
/// - Make it responsive so text wraps if needed and button stays aligned to
/// the right.
class OrderCardWidget extends StatefulWidget {
  const OrderCardWidget({
    super.key,
    required this.order,
    required this.customer,
    required this.status,
    int? permit,
  }) : this.permit = permit ?? 9;

  final String? order;
  final String? customer;
  final String? status;
  final int permit;

  @override
  State<OrderCardWidget> createState() => _OrderCardWidgetState();
}

class _OrderCardWidgetState extends State<OrderCardWidget> {
  late OrderCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF04113D),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 5.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFF08143F),
            boxShadow: [
              BoxShadow(
                blurRadius: 8.0,
                color: Color(0x1A000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Color(0xFF1A2E6B),
              width: 2.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 14.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order ${widget.order}',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.person_outlined,
                                color: Color(0xFF4C6FFF),
                                size: 20.0,
                              ),
                              Text(
                                'Customer: ${widget.customer}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 3.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.playlist_add_check_outlined,
                                color: Color(0xFF6C4DFF),
                                size: 20.0,
                              ),
                              Text(
                                'Permit: #${widget.permit.toString()}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 3.0)),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FaIcon(
                                FontAwesomeIcons.circleNotch,
                                color: Color(0xFF1FE0C5),
                                size: 16.0,
                              ),
                              Text(
                                'Status: ${widget.status}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ].divide(SizedBox(width: 5.0)),
                          ),
                        ].divide(SizedBox(height: 10.0)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            OrderDetailsPageWidget.routeName,
                            queryParameters: {
                              'orderNO': serializeParam(
                                widget.order,
                                ParamType.String,
                              ),
                              'customer': serializeParam(
                                widget.customer,
                                ParamType.String,
                              ),
                              'batchNo': serializeParam(
                                '202520',
                                ParamType.String,
                              ),
                              'quantity': serializeParam(
                                '50000',
                                ParamType.String,
                              ),
                            }.withoutNulls,
                          );
                        },
                        text: 'Start Pack',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsets.all(8.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFF15B29),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ].divide(SizedBox(width: 16.0)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
