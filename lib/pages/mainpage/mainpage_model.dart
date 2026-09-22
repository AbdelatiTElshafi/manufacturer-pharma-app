import '/backend/api_requests/api_calls.dart';
import '/components/loading/loading_widget.dart';
import '/components/main_header/main_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'mainpage_widget.dart' show MainpageWidget;
import 'package:flutter/material.dart';

class MainpageModel extends FlutterFlowModel<MainpageWidget> {
  ///  Local state fields for this page.

  bool loadingisvisable = false;

  String? userLocation = '30.0444,31.2357';

  double? temp;

  String? city;

  String? country;

  String? region;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getCurrentLocation] action in Mainpage widget.
  String? locationOutput;
  // Stores action output result for [Backend Call - API (GetWeather)] action in Mainpage widget.
  ApiCallResponse? apiResulthmq;
  // Model for MainHeader component.
  late MainHeaderModel mainHeaderModel;
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

  @override
  void initState(BuildContext context) {
    mainHeaderModel = createModel(context, () => MainHeaderModel());
    loadingModel = createModel(context, () => LoadingModel());
  }

  @override
  void dispose() {
    mainHeaderModel.dispose();
    loadingModel.dispose();
  }

  /// Action blocks.
  Future temperatureActions(BuildContext context) async {
    ApiCallResponse? tempElitechResult;
    ApiCallResponse? temptzoneresult;
    ApiCallResponse? getMeasurementsResult;

    if (FFAppState().Isconnected == true) {
      if (FFAppState().selectedBrand == 'Elitech') {
        tempElitechResult = await ElitechApisGroup.getTempElitechCall.call(
          keyId: FFAppState().elitechKeyId,
          keySecret: FFAppState().elitechKeySecret,
          deviceGuid: FFAppState().deviceGuid,
          elitechToken: FFAppState().elitechToken,
        );

        if ((tempElitechResult.succeeded ?? true)) {
          FFAppState().currentTemp =
              ElitechApisGroup.getTempElitechCall.temperature(
            (tempElitechResult.jsonBody ?? ''),
          )!;
          FFAppState().update(() {});
        }
      } else {
        if (FFAppState().selectedBrand == 'Tzone') {
          temptzoneresult = await GetTempTzoneGroup.getTempTzoneCall.call(
            deviceGuid: FFAppState().deviceGuid,
            tzoneToken: FFAppState().tzoneToken,
          );

          if ((temptzoneresult.succeeded ?? true)) {
            FFAppState().currentTemp = GetTempTzoneGroup.getTempTzoneCall
                .temperature(
                  (temptzoneresult.jsonBody ?? ''),
                )!
                .toString();
            FFAppState().update(() {});
          }
        } else {
          if (FFAppState().selectedBrand == 'efento') {
            getMeasurementsResult =
                await EfentoApisGroup.getMeasurementsEfentoCall.call(
              efentoApiToken: FFAppState().efentoApiToken,
              efentoLocationId: FFAppState().efentoLocationId,
            );

            if ((getMeasurementsResult.succeeded ?? true)) {
              FFAppState().efentoDevicesRaw = getJsonField(
                (getMeasurementsResult.jsonBody ?? ''),
                r'''$.measurementPoints''',
              ).toString();
              FFAppState().efentoDevicesList =
                  EfentoApisGroup.getMeasurementsEfentoCall
                      .efentoDeviceNames(
                        (getMeasurementsResult.jsonBody ?? ''),
                      )!
                      .toList()
                      .cast<String>();
              FFAppState().efentoDeviceTemps =
                  EfentoApisGroup.getMeasurementsEfentoCall
                      .efentoDeviceTemps(
                        (getMeasurementsResult.jsonBody ?? ''),
                      )!
                      .toList()
                      .cast<double>();
              FFAppState().update(() {});
              FFAppState().currentTemp = functions
                  .getEfentoDeviceTemp(
                      FFAppState().efentoDevicesList.toList(),
                      FFAppState().efentoDeviceTemps.toList(),
                      FFAppState().efentoDeviceName)
                  .toString();
              FFAppState().update(() {});
            }
          }
        }
      }
    }
  }
}
