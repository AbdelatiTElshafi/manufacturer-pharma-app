import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start SerialStatusUpdate Group Code

class SerialStatusUpdateGroup {
  static String getBaseUrl({
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6ImI4MTI2OWYxLTIxZDgtNGYyZS1iNzE5LWMyMjQwYTg0MGQ5MCIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjU0MzIxL2F1dGgvdjEiLCJzdWIiOiIxMTExMTExMS0xMTExLTQxMTEtODExMS0xMTExMTExMTExMTEiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg3MzQ5MjQ3LCJpYXQiOjE3ODczNDU2NDcsImVtYWlsIjoiYWRtaW5AZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4NzM0NTY0N31dLCJzZXNzaW9uX2lkIjoiMDJhM2U5OWEtZmI3ZC00NDljLWEzMWEtMjk4MTg3M2NiMjNhIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.MhzMdIzoblI3re9Wvj8g8KMf6cggfmPHcV0hIA1SxQ3Or3MkXT8MT6kJ9i9X4P-FetSN0pjXjbEGl9dvqs39iw',
  }) =>
      'https://staging.gxptrace.net/api/v1/status';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [AuthToken]',
  };
  static CheckSerialStatusCall checkSerialStatusCall = CheckSerialStatusCall();
  static UpdateSerialStatusCall updateSerialStatusCall =
      UpdateSerialStatusCall();
}

class CheckSerialStatusCall {
  Future<ApiCallResponse> call({
    String? serial = '',
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6ImI4MTI2OWYxLTIxZDgtNGYyZS1iNzE5LWMyMjQwYTg0MGQ5MCIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjU0MzIxL2F1dGgvdjEiLCJzdWIiOiIxMTExMTExMS0xMTExLTQxMTEtODExMS0xMTExMTExMTExMTEiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg3MzQ5MjQ3LCJpYXQiOjE3ODczNDU2NDcsImVtYWlsIjoiYWRtaW5AZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4NzM0NTY0N31dLCJzZXNzaW9uX2lkIjoiMDJhM2U5OWEtZmI3ZC00NDljLWEzMWEtMjk4MTg3M2NiMjNhIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.MhzMdIzoblI3re9Wvj8g8KMf6cggfmPHcV0hIA1SxQ3Or3MkXT8MT6kJ9i9X4P-FetSN0pjXjbEGl9dvqs39iw',
  }) async {
    final baseUrl = SerialStatusUpdateGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "serial": "${escapeStringForJson(serial)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CheckSerialStatus',
      apiUrl: '${baseUrl}/check-serial',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
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

class UpdateSerialStatusCall {
  Future<ApiCallResponse> call({
    String? status = '',
    String? reason = '',
    List<String>? serialsList,
    String? userName = '',
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6ImI4MTI2OWYxLTIxZDgtNGYyZS1iNzE5LWMyMjQwYTg0MGQ5MCIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjU0MzIxL2F1dGgvdjEiLCJzdWIiOiIxMTExMTExMS0xMTExLTQxMTEtODExMS0xMTExMTExMTExMTEiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg3MzQ5MjQ3LCJpYXQiOjE3ODczNDU2NDcsImVtYWlsIjoiYWRtaW5AZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4NzM0NTY0N31dLCJzZXNzaW9uX2lkIjoiMDJhM2U5OWEtZmI3ZC00NDljLWEzMWEtMjk4MTg3M2NiMjNhIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.MhzMdIzoblI3re9Wvj8g8KMf6cggfmPHcV0hIA1SxQ3Or3MkXT8MT6kJ9i9X4P-FetSN0pjXjbEGl9dvqs39iw',
  }) async {
    final baseUrl = SerialStatusUpdateGroup.getBaseUrl(
      authToken: authToken,
    );
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
      headers: {
        'Authorization': 'Bearer ${authToken}',
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

/// End SerialStatusUpdate Group Code

/// Start UserAccessMangment Group Code

class UserAccessMangmentGroup {
  static String getBaseUrl() => 'https://staging.gxptrace.net/api/v1/';
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
        r'''$.data.items[:].username''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? role(dynamic response) => (getJsonField(
        response,
        r'''$.data.items[:].role''',
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

  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  String? authToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.token''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

/// End UserAccessMangment Group Code

/// Start OrdersAPIs Group Code

class OrdersAPIsGroup {
  static String getBaseUrl({
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6IjE2NDhlMWExLWRkYzAtNGM2Ni05MWVkLTkwMjdmMDc1OGI5ZiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL25peml4Zmx5c2ZkampkcXZiaWRzLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg5Njc5ODY3LCJpYXQiOjE3ODk2NzYyNjcsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4OTY3NjI2N31dLCJzZXNzaW9uX2lkIjoiYjQ3Y2JhZjEtZDgyOC00NDkxLWI2YjctYTlmM2ZlNTYyNGQxIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.4TeuTjg2T08TbizE998feHGUz4Tb0p4YbUjRppGW_9mTGFYO4cYF5taRAij3z2F_tYxZAC2bsZjg652vwpED_A',
  }) =>
      'https://staging.gxptrace.net/api/v1/orders';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [AuthToken]',
  };
  static GetOrderByUserCall getOrderByUserCall = GetOrderByUserCall();
  static GetOrderDetailsCall getOrderDetailsCall = GetOrderDetailsCall();
  static ProductSerialsDetailsCall productSerialsDetailsCall =
      ProductSerialsDetailsCall();
  static GetSerialDetailsCall getSerialDetailsCall = GetSerialDetailsCall();
}

class GetOrderByUserCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? orderStatus = '',
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6IjE2NDhlMWExLWRkYzAtNGM2Ni05MWVkLTkwMjdmMDc1OGI5ZiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL25peml4Zmx5c2ZkampkcXZiaWRzLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg5Njc5ODY3LCJpYXQiOjE3ODk2NzYyNjcsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4OTY3NjI2N31dLCJzZXNzaW9uX2lkIjoiYjQ3Y2JhZjEtZDgyOC00NDkxLWI2YjctYTlmM2ZlNTYyNGQxIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.4TeuTjg2T08TbizE998feHGUz4Tb0p4YbUjRppGW_9mTGFYO4cYF5taRAij3z2F_tYxZAC2bsZjg652vwpED_A',
  }) async {
    final baseUrl = OrdersAPIsGroup.getBaseUrl(
      authToken: authToken,
    );

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
        'Authorization': 'Bearer ${authToken}',
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
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6IjE2NDhlMWExLWRkYzAtNGM2Ni05MWVkLTkwMjdmMDc1OGI5ZiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL25peml4Zmx5c2ZkampkcXZiaWRzLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg5Njc5ODY3LCJpYXQiOjE3ODk2NzYyNjcsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4OTY3NjI2N31dLCJzZXNzaW9uX2lkIjoiYjQ3Y2JhZjEtZDgyOC00NDkxLWI2YjctYTlmM2ZlNTYyNGQxIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.4TeuTjg2T08TbizE998feHGUz4Tb0p4YbUjRppGW_9mTGFYO4cYF5taRAij3z2F_tYxZAC2bsZjg652vwpED_A',
  }) async {
    final baseUrl = OrdersAPIsGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "orderNo": "${escapeStringForJson(orderNO)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetOrderDetails',
      apiUrl: '${baseUrl}/GetOrderDetails',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
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
  List? productsData(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
}

class ProductSerialsDetailsCall {
  Future<ApiCallResponse> call({
    String? orderNo = '',
    String? gtin = '',
    String? sscc = '',
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6IjE2NDhlMWExLWRkYzAtNGM2Ni05MWVkLTkwMjdmMDc1OGI5ZiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL25peml4Zmx5c2ZkampkcXZiaWRzLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg5Njc5ODY3LCJpYXQiOjE3ODk2NzYyNjcsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4OTY3NjI2N31dLCJzZXNzaW9uX2lkIjoiYjQ3Y2JhZjEtZDgyOC00NDkxLWI2YjctYTlmM2ZlNTYyNGQxIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.4TeuTjg2T08TbizE998feHGUz4Tb0p4YbUjRppGW_9mTGFYO4cYF5taRAij3z2F_tYxZAC2bsZjg652vwpED_A',
  }) async {
    final baseUrl = OrdersAPIsGroup.getBaseUrl(
      authToken: authToken,
    );

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
        'Authorization': 'Bearer ${authToken}',
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
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6IjE2NDhlMWExLWRkYzAtNGM2Ni05MWVkLTkwMjdmMDc1OGI5ZiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL25peml4Zmx5c2ZkampkcXZiaWRzLnN1cGFiYXNlLmNvL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg5Njc5ODY3LCJpYXQiOjE3ODk2NzYyNjcsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4OTY3NjI2N31dLCJzZXNzaW9uX2lkIjoiYjQ3Y2JhZjEtZDgyOC00NDkxLWI2YjctYTlmM2ZlNTYyNGQxIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.4TeuTjg2T08TbizE998feHGUz4Tb0p4YbUjRppGW_9mTGFYO4cYF5taRAij3z2F_tYxZAC2bsZjg652vwpED_A',
  }) async {
    final baseUrl = OrdersAPIsGroup.getBaseUrl(
      authToken: authToken,
    );

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
        'Authorization': 'Bearer ${authToken}',
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
  static String getBaseUrl({
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6ImI4MTI2OWYxLTIxZDgtNGYyZS1iNzE5LWMyMjQwYTg0MGQ5MCIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjU0MzIxL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg3NjA1NDg2LCJpYXQiOjE3ODc2MDE4ODYsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4NzYwMTg4Nn1dLCJzZXNzaW9uX2lkIjoiNDFmYmIxZjgtZDcyNy00NzNiLTg3ODAtMGRhYmYwMWQ2YWIyIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.MuJoYy4Jei0L8sIHmyDMsVD6uFymyLuHUnPzsuezUvs7UZohfJOoc2IpBwdo2T_qjNyb9XtxB4NsR3_PBUM6Zg',
  }) =>
      'https://staging.gxptrace.net/api/v1/shipments';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [AuthToken]',
  };
  static CancelShippedCall cancelShippedCall = CancelShippedCall();
  static ConfirmShipmentCall confirmShipmentCall = ConfirmShipmentCall();
  static SaveScansCall saveScansCall = SaveScansCall();
}

class CancelShippedCall {
  Future<ApiCallResponse> call({
    String? orderNo = 'SO-7781',
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6ImI4MTI2OWYxLTIxZDgtNGYyZS1iNzE5LWMyMjQwYTg0MGQ5MCIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjU0MzIxL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg3NjA1NDg2LCJpYXQiOjE3ODc2MDE4ODYsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4NzYwMTg4Nn1dLCJzZXNzaW9uX2lkIjoiNDFmYmIxZjgtZDcyNy00NzNiLTg3ODAtMGRhYmYwMWQ2YWIyIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.MuJoYy4Jei0L8sIHmyDMsVD6uFymyLuHUnPzsuezUvs7UZohfJOoc2IpBwdo2T_qjNyb9XtxB4NsR3_PBUM6Zg',
  }) async {
    final baseUrl = ShipmentsGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
 "order":"${escapeStringForJson(orderNo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CancelShipped',
      apiUrl: '${baseUrl}/CancelShipped',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
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
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6ImI4MTI2OWYxLTIxZDgtNGYyZS1iNzE5LWMyMjQwYTg0MGQ5MCIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjU0MzIxL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg3NjA1NDg2LCJpYXQiOjE3ODc2MDE4ODYsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4NzYwMTg4Nn1dLCJzZXNzaW9uX2lkIjoiNDFmYmIxZjgtZDcyNy00NzNiLTg3ODAtMGRhYmYwMWQ2YWIyIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.MuJoYy4Jei0L8sIHmyDMsVD6uFymyLuHUnPzsuezUvs7UZohfJOoc2IpBwdo2T_qjNyb9XtxB4NsR3_PBUM6Zg',
  }) async {
    final baseUrl = ShipmentsGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "order": "${escapeStringForJson(orderNo)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Confirm Shipment',
      apiUrl: '${baseUrl}/ConfirmShipment',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${authToken}',
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
    String? authToken =
        'eyJhbGciOiJFUzI1NiIsImtpZCI6ImI4MTI2OWYxLTIxZDgtNGYyZS1iNzE5LWMyMjQwYTg0MGQ5MCIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjU0MzIxL2F1dGgvdjEiLCJzdWIiOiIzMzMzMzMzMy0zMzMzLTQzMzMtODMzMy0zMzMzMzMzMzMzMzMiLCJhdWQiOiJhdXRoZW50aWNhdGVkIiwiZXhwIjoxNzg3NjA1NDg2LCJpYXQiOjE3ODc2MDE4ODYsImVtYWlsIjoib3BlcmF0b3JAZ3hwdHJhY2UubG9jYWwiLCJwaG9uZSI6IiIsImFwcF9tZXRhZGF0YSI6eyJwcm92aWRlciI6ImVtYWlsIiwicHJvdmlkZXJzIjpbImVtYWlsIl19LCJ1c2VyX21ldGFkYXRhIjp7fSwicm9sZSI6ImF1dGhlbnRpY2F0ZWQiLCJhYWwiOiJhYWwxIiwiYW1yIjpbeyJtZXRob2QiOiJwYXNzd29yZCIsInRpbWVzdGFtcCI6MTc4NzYwMTg4Nn1dLCJzZXNzaW9uX2lkIjoiNDFmYmIxZjgtZDcyNy00NzNiLTg3ODAtMGRhYmYwMWQ2YWIyIiwiaXNfYW5vbnltb3VzIjpmYWxzZX0.MuJoYy4Jei0L8sIHmyDMsVD6uFymyLuHUnPzsuezUvs7UZohfJOoc2IpBwdo2T_qjNyb9XtxB4NsR3_PBUM6Zg',
  }) async {
    final baseUrl = ShipmentsGroup.getBaseUrl(
      authToken: authToken,
    );

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
      headers: {
        'Authorization': 'Bearer ${authToken}',
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

/// End Shipments Group Code

/// Start ElitechApis Group Code

class ElitechApisGroup {
  static String getBaseUrl() =>
      'http://new.i-elitech.com/api/data-api/elitechAccess';
  static Map<String, String> headers = {};
  static GetTokenElitechCall getTokenElitechCall = GetTokenElitechCall();
  static GetTempElitechCall getTempElitechCall = GetTempElitechCall();
}

class GetTokenElitechCall {
  Future<ApiCallResponse> call({
    String? keyId = '',
    String? keySecret = '',
    String? userName = '',
    String? password = '',
  }) async {
    final baseUrl = ElitechApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "keyId": "${escapeStringForJson(keyId)}",
  "keySecret": "${escapeStringForJson(keySecret)}",
  "userName": "${escapeStringForJson(userName)}",
  "password": "${escapeStringForJson(password)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTokenElitech',
      apiUrl: '${baseUrl}/getToken',
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

  String? accessToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data''',
      ));
}

class GetTempElitechCall {
  Future<ApiCallResponse> call({
    String? keyId = '',
    String? keySecret = '',
    String? deviceGuid = '',
    String? elitechToken = '',
  }) async {
    final baseUrl = ElitechApisGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "keyId": "${escapeStringForJson(keyId)}",
  "keySecret": "${escapeStringForJson(keySecret)}",
  "deviceGuids": ["${escapeStringForJson(deviceGuid)}"]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getTempElitech',
      apiUrl: '${baseUrl}/getRealTimeData',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': '${elitechToken}',
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

  String? temperature(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data[:].tmp1''',
      ));
}

/// End ElitechApis Group Code

/// Start getTempTzone Group Code

class GetTempTzoneGroup {
  static String getBaseUrl() => 'https://i-cloud.tzonedigital.com';
  static Map<String, String> headers = {};
  static GetTokenTzoneCall getTokenTzoneCall = GetTokenTzoneCall();
  static GetTempTzoneCall getTempTzoneCall = GetTempTzoneCall();
}

class GetTokenTzoneCall {
  Future<ApiCallResponse> call({
    String? tzoneAppId = '',
    String? tzoneAppKey = '',
    String? tzoneAppSecret = '',
  }) async {
    final baseUrl = GetTempTzoneGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getTokenTzone',
      apiUrl: '${baseUrl}/Identity',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'appId': tzoneAppId,
        'appKey': tzoneAppKey,
        'appSecret': tzoneAppSecret,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? tzoneToken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.body.token''',
      ));
}

class GetTempTzoneCall {
  Future<ApiCallResponse> call({
    String? deviceGuid = '',
    String? tzoneToken = '',
  }) async {
    final baseUrl = GetTempTzoneGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getTempTzone',
      apiUrl: '${baseUrl}/Terminal/${deviceGuid}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${tzoneToken}',
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

  double? temperature(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.body.temperature''',
      ));
}

/// End getTempTzone Group Code

/// Start EfentoApis Group Code

class EfentoApisGroup {
  static String getBaseUrl() => 'https://cloud.efento.io/api/v2';
  static Map<String, String> headers = {};
  static GetOrgEfentoCall getOrgEfentoCall = GetOrgEfentoCall();
  static GetLocationEfentoCall getLocationEfentoCall = GetLocationEfentoCall();
  static GetMeasurementsEfentoCall getMeasurementsEfentoCall =
      GetMeasurementsEfentoCall();
}

class GetOrgEfentoCall {
  Future<ApiCallResponse> call({
    String? efentoApiToken = '',
  }) async {
    final baseUrl = EfentoApisGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getOrgEfento',
      apiUrl: '${baseUrl}/organizations',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${efentoApiToken}',
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

  int? efentoOrgId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.organizations[:].id''',
      ));
}

class GetLocationEfentoCall {
  Future<ApiCallResponse> call({
    String? efentoApiToken = '',
    String? efentoOrgId = '',
  }) async {
    final baseUrl = EfentoApisGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getLocationEfento',
      apiUrl: '${baseUrl}/locations?organization-id=${efentoOrgId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${efentoApiToken}',
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

  List<int>? efentoLocationId(dynamic response) => (getJsonField(
        response,
        r'''$.locations[0].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetMeasurementsEfentoCall {
  Future<ApiCallResponse> call({
    String? efentoApiToken = '',
    String? efentoLocationId = '',
  }) async {
    final baseUrl = EfentoApisGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'getMeasurementsEfento',
      apiUrl: '${baseUrl}/measurement-points?location-ids=${efentoLocationId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': '${efentoApiToken}',
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

  List? efentoDevicesRaw(dynamic response) => getJsonField(
        response,
        r'''$.measurementPoints''',
        true,
      ) as List?;
  List<String>? efentoDeviceNames(dynamic response) => (getJsonField(
        response,
        r'''$.measurementPoints[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? efentoDeviceTemps(dynamic response) => (getJsonField(
        response,
        r'''$.measurementPoints[*].measurements.channels[0].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

/// End EfentoApis Group Code

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

class GetWeatherCall {
  static Future<ApiCallResponse> call({
    String? location = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetWeather',
      apiUrl: 'https://api.weatherapi.com/v1/current.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'key': "97fe3e909974460d8a9200523231709",
        'q': location,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static double? temperature(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.temp_c''',
      ));
  static String? city(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.name''',
      ));
  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.country''',
      ));
  static String? region(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.location.region''',
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
