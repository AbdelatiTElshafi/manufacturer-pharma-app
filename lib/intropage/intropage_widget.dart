import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'intropage_model.dart';
export 'intropage_model.dart';

class IntropageWidget extends StatefulWidget {
  const IntropageWidget({super.key});

  static String routeName = 'intropage';
  static String routePath = '/intropage';

  @override
  State<IntropageWidget> createState() => _IntropageWidgetState();
}

class _IntropageWidgetState extends State<IntropageWidget> {
  late IntropageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IntropageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 22000,
        ),
      );

      context.pushNamed(LoginpageWidget.routeName);
    });
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: FlutterFlowVideoPlayer(
                path: 'assets/videos/video2.mp4',
                videoType: VideoType.asset,
                width: double.infinity,
                height: double.infinity,
                autoPlay: true,
                looping: false,
                showControls: false,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
