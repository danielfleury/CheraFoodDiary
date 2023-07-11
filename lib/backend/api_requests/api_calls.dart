import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class NutritionalanalysisCall {
  static Future<ApiCallResponse> call({
    String? diaryentry = '',
  }) {
    final body = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "system",
      "content": "Your role is to eat a food diary entry and analyze its nutritional content."
    },
    {
      "role": "user",
      "content": "Analyze the nutritional contents of this food diary: ${diaryentry} "
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'nutritionalanalysis',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nutritionalanalysis(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
}

class FeedbackanalysisCopyCall {
  static Future<ApiCallResponse> call({
    String? diaryentry = '',
  }) {
    final body = '''
{
  "model": "gpt-3.5-turbo",
  "messages": [
    {
      "role": "system",
      "content": "Your role is to eat a food diary entry and provide positive, yet constructive, nutritional feedback."
    },
    {
      "role": "user",
      "content": "Provide feedback on the following diary entry: ${diaryentry} "
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'feedbackanalysis Copy',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic feedbackanalysis(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
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

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
