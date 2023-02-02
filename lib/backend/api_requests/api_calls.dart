import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class EnviarBuilderallCall {
  static Future<ApiCallResponse> call({
    String? fname = '',
    String? email = '',
    int? phoneprefix,
    int? phone,
    String? urlDisclaimer = '',
  }) {
    final body = '''
{
  "FNAME": "${fname}",
  "EMAIL": "${email}",
  "PHONEPREFIX": "${phoneprefix}",
  "PHONE": "${phone}",
  "URL_DISCLAIMER": "${urlDisclaimer}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'enviarBuilderall',
      apiUrl: 'https://app.mailingboss.com/hook/63d72b7dd17b5',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
