import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SerialStatusUpdate Group Code

class SerialStatusUpdateGroup {
  static String getBaseUrl() =>
      'https://nonrepentantly-noblest-jacki.ngrok-free.dev/api_test/api/v1/status';
  static Map<String, String> headers = {};
  static CheckSerialStatusCall checkSerialStatusCall = CheckSerialStatusCall();
  static UpdateSerialStatusCall updateSerialStatusCall =
      UpdateSerialStatusCall();
}

class CheckSerialStatusCall {
  Future<ApiCallResponse> call({
    String? serial = '',
  }) async {
    final baseUrl = SerialStatusUpdateGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "serial": "${escapeStringForJson(serial)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckSerialStatus',
      apiUrl: '${baseUrl}/check-serial',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateSerialStatusCall {
  Future<ApiCallResponse> call({
    String? status = '',
    String? reason = '',
    List<String>? serialsList,
    String? userName = '',
  }) async {
    final baseUrl = SerialStatusUpdateGroup.getBaseUrl();
    final serials = _serializeList(serialsList);

    final ffApiRequestBody = '''
{
  "statusType": "DAMAGED${escapeStringForJson(status)}",
  "reasonCode": "D03${escapeStringForJson(reason)}",
  "reasonDescription": "Torn packaging${escapeStringForJson(reason)}",
  "operatorId": "USER-001${escapeStringForJson(userName)}",
  "SerialList": [
    ${serials}
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateSerialStatus',
      apiUrl: '${baseUrl}/update',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End SerialStatusUpdate Group Code

/// Start UserAccessMangment Group Code

class UserAccessMangmentGroup {
  static String getBaseUrl() =>
      'https://nonrepentantly-noblest-jacki.ngrok-free.dev/api_test';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetAllUsersCall getAllUsersCall = GetAllUsersCall();
  static UserLoginCall userLoginCall = UserLoginCall();
}

class GetAllUsersCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = UserAccessMangmentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetAllUsers',
      apiUrl: '${baseUrl}/GetAllUsers',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'ngrok-skip-browser-warning': 'true',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? name(dynamic response) => (getJsonField(
        response,
        r'''$[:].username''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? role(dynamic response) => (getJsonField(
        response,
        r'''$[:].role''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class UserLoginCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) async {
    final baseUrl = UserAccessMangmentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UserLogin',
      apiUrl: '${baseUrl}/UserLogin',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End UserAccessMangment Group Code

/// Start OrdersAPIs Group Code

class OrdersAPIsGroup {
  static String getBaseUrl() =>
      'https://nonrepentantly-noblest-jacki.ngrok-free.dev/api_test/api/v1/orders';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static GetOrderByUserCall getOrderByUserCall = GetOrderByUserCall();
  static GetOrderDetailsCall getOrderDetailsCall = GetOrderDetailsCall();
  static ProductSerialsDetailsCall productSerialsDetailsCall =
      ProductSerialsDetailsCall();
  static GetSerialDetailsCall getSerialDetailsCall = GetSerialDetailsCall();
}

class GetOrderByUserCall {
  Future<ApiCallResponse> call({
    String? username = 'Admin',
    String? orderStatus = '',
  }) async {
    final baseUrl = OrdersAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "${escapeStringForJson(username)}",
  "Status": "${escapeStringForJson(orderStatus)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetOrderByUser',
      apiUrl: '${baseUrl}/GetOrderByUser',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? order(dynamic response) => (getJsonField(
        response,
        r'''$.data.items[:].orderNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? customer(dynamic response) => (getJsonField(
        response,
        r'''$.data.items[:].customer''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? permitNo(dynamic response) => (getJsonField(
        response,
        r'''$.data.items[:].permitNo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? status(dynamic response) => (getJsonField(
        response,
        r'''$.data.items[:].status''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetOrderDetailsCall {
  Future<ApiCallResponse> call({
    String? orderNO = 'SO-7781',
  }) async {
    final baseUrl = OrdersAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "orderNo": "${escapeStringForJson(orderNO)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetOrderDetails',
      apiUrl: '${baseUrl}/GetOrderDetails',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? orderNo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.orderNo''',
      ));
  String? customer(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.customer''',
      ));
  String? gln(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.gln''',
      ));
  String? sscc(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.sscc''',
      ));
  List<String>? productsName(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].productName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? requiredQtys(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].requiredQty''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? scannedQtys(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].scannedQty''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? gTINs(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].GTIN''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ProductSerialsDetailsCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
    String? gtin = '',
    String? sscc = '',
  }) async {
    final baseUrl = OrdersAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "orderNo": "${escapeStringForJson(orderNo)}",
  "gtin": "${escapeStringForJson(gtin)}",
  "SSCC": "${escapeStringForJson(sscc)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ProductSerialsDetails',
      apiUrl: '${baseUrl}/ProductSerialsDetails',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? totalPallets(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.summary.totalPallets''',
      ));
  int? totalCartons(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.summary.totalCartons''',
      ));
  int? totalItems(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.summary.totalItems''',
      ));
  List<String>? serial(dynamic response) => (getJsonField(
        response,
        r'''$.data.nodes[:].serial''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? serialsitemsCount(dynamic response) => (getJsonField(
        response,
        r'''$.data.nodes[:].childCounts.item''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? serialsitemstype(dynamic response) => (getJsonField(
        response,
        r'''$.data.nodes[:].type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? serialspalletsCount(dynamic response) => (getJsonField(
        response,
        r'''$.data.nodes[:].childCounts.pallet''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<int>? serialscartonsCount(dynamic response) => (getJsonField(
        response,
        r'''$.data.nodes[:].childCounts.carton''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetSerialDetailsCall {
  Future<ApiCallResponse> call({
    String? serial = '',
    String? type = '',
  }) async {
    final baseUrl = OrdersAPIsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Serials": "${escapeStringForJson(serial)}",
  "Serial_Type": "${escapeStringForJson(type)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetSerialDetails',
      apiUrl: '${baseUrl}/GetSerialDetails',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End OrdersAPIs Group Code

/// Start Shipments Group Code

class ShipmentsGroup {
  static String getBaseUrl() =>
      'https://nonrepentantly-noblest-jacki.ngrok-free.dev/api_test/api/v1/shipments';
  static Map<String, String> headers = {};
  static CancelShippedCall cancelShippedCall = CancelShippedCall();
  static ConfirmShipmentCall confirmShipmentCall = ConfirmShipmentCall();
  static SaveScansCall saveScansCall = SaveScansCall();
}

class CancelShippedCall {
  Future<ApiCallResponse> call({
    String? orderNo = 'SO-7781',
  }) async {
    final baseUrl = ShipmentsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
 "order":"${escapeStringForJson(orderNo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CancelShipped',
      apiUrl: '${baseUrl}/CancelShipped',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? order(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order''',
      ));
}

class ConfirmShipmentCall {
  Future<ApiCallResponse> call({
    String? orderNo = 'SO-7781',
  }) async {
    final baseUrl = ShipmentsGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "order": "${escapeStringForJson(orderNo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Confirm Shipment',
      apiUrl: '${baseUrl}/ConfirmShipment',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  String? order(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.order''',
      ));
}

class SaveScansCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
    String? gtin = '',
    String? sscc = '',
    dynamic itemsJson,
  }) async {
    final baseUrl = ShipmentsGroup.getBaseUrl();

    final items = _serializeJson(itemsJson);
    final ffApiRequestBody = '''
{
  "orderNo": "${escapeStringForJson(orderNo)}",
  "gtin": "${escapeStringForJson(gtin)}",
  "sscc": "${escapeStringForJson(sscc)}",
  "items": [
    ${items}
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SaveScans',
      apiUrl: '${baseUrl}/SaveScans',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End Shipments Group Code

class GetOrdersDataCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetOrders Data',
      apiUrl: 'https://api.thecatapi.com/v1/images/search?limit=10',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? orders(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? products(dynamic response) => (getJsonField(
        response,
        r'''$[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? customers(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? quantities(dynamic response) => (getJsonField(
        response,
        r'''$[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ForecastCall {
  static Future<ApiCallResponse> call() async {
    final ffApiRequestBody = '''
{
  "latitude": [30.13],
  "longitude": [31.24],
  "current": [
    "temperature_2m",
    "relative_humidity_2m",
    "pressure_msl",
    "wind_speed_10m"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'forecast',
      apiUrl: 'https://api.open-meteo.com/v1/forecast',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? temperature2m(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.temperature_2m''',
      ));
  static int? humidity2m(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.relative_humidity_2m''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
