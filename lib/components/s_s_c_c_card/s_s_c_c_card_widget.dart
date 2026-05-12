import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 's_s_c_c_card_model.dart';
export 's_s_c_c_card_model.dart';

class SSCCCardWidget extends StatefulWidget {
  const SSCCCardWidget({
    super.key,
    required this.sscc,
    required this.itemcount,
    required this.delete,
    required this.serialtype,
    int? palletcount,
    required this.cartooncount,
  }) : this.palletcount = palletcount ?? 0;

  final String? sscc;
  final int? itemcount;
  final Future Function()? delete;
  final String? serialtype;
  final int palletcount;
  final int? cartooncount;

  @override
  State<SSCCCardWidget> createState() => _SSCCCardWidgetState();
}

class _SSCCCardWidgetState extends State<SSCCCardWidget> {
  late SSCCCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SSCCCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 392.0,
      height: 65.0,
      decoration: BoxDecoration(
        color: Color(0xFF04113D),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Container(
          width: double.infinity,
          height: 43.6,
          decoration: BoxDecoration(
            color: Color(0xFF08143F),
            borderRadius: BorderRadius.circular(10.0),
            shape: BoxShape.rectangle,
            border: Border.all(
              color: Color(0xFF1A2E6B),
              width: 2.0,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.sscc,
                            'sscc',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 2.0, 0.0, 0.0),
                      child: Text(
                        'Pallets:${valueOrDefault<String>(
                          widget.palletcount.toString(),
                          '0',
                        )} | Cartoons:${widget.cartooncount?.toString()} | Items:${widget.itemcount?.toString()}',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w300,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).alternate,
                              fontSize: 11.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w300,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(height: 3.0)),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.delete?.call();
                  },
                  child: FaIcon(
                    FontAwesomeIcons.trashAlt,
                    color: Color(0xFFF40606),
                    size: 21.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
