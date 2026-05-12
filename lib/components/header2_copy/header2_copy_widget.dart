import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'header2_copy_model.dart';
export 'header2_copy_model.dart';

/// Create a reusable mobile app header component.
///
/// Layout:
/// - Background color: White (#FFFFFF), full width of the screen, fixed
/// height around 100px.
/// - Padding: 16px horizontally, 12px vertically.
///
/// Top row:
/// - Left: Back button icon (chevron-left), size 24px, color #323394 (Primary
/// Blue).
/// - Center: App name "GXPWay", bold, font size 20px, color #323394.
/// - Right: Language switch button, label "AR / EN", font size 14px, color
/// #F3601F (Accent Orange), border color #F3601F, rounded corners radius 8px,
/// padding horizontal 8px, vertical 4px.
///
/// Below the top row:
/// - First line: Subtitle text (placeholder: "Pharmaceutical Warehouse
/// Management"), font size 14px, color #8181BC, centered.
/// - Second line: Username display (placeholder: "Username: John Doe"), font
/// size 14px, color #111827, centered.
///
/// Style:
/// - Font family: Poppins or Inter.
/// - Spacing between text lines: 4px.
/// - Keep the design clean, minimal, and modern.
/// - All text should be dynamic so it can be changed in the component
/// properties.
class Header2CopyWidget extends StatefulWidget {
  const Header2CopyWidget({
    super.key,
    required this.pagename,
    this.showMenu,
  });

  final String? pagename;
  final Future Function()? showMenu;

  @override
  State<Header2CopyWidget> createState() => _Header2CopyWidgetState();
}

class _Header2CopyWidgetState extends State<Header2CopyWidget> {
  late Header2CopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Header2CopyModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: double.infinity,
          height: 100.0,
          decoration: BoxDecoration(
            color: Color(0x61261D66),
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
                color: Color(0x0D000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.only(),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 18.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/medicine.png',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.pagename,
                                'page',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    fontSize: 23.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ].divide(SizedBox(height: 8.0)),
            ),
          ),
        ),
      ],
    );
  }
}
