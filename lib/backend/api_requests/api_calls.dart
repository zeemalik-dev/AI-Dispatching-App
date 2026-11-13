import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Vapi Group Code

class VapiGroup {
  static String getBaseUrl() => 'https://api.vapi.ai/';
  static Map<String, String> headers = {
    'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
  };
  static CreateAssitantCall createAssitantCall = CreateAssitantCall();
  static BuyNumberCall buyNumberCall = BuyNumberCall();
  static ListPhoneCallsCall listPhoneCallsCall = ListPhoneCallsCall();
  static GetPhoneCallDetailsCall getPhoneCallDetailsCall =
      GetPhoneCallDetailsCall();
  static DeleteAssistantCall deleteAssistantCall = DeleteAssistantCall();
  static UpdateAssistantCall updateAssistantCall = UpdateAssistantCall();
  static UpdatePhoneNumberCall updatePhoneNumberCall = UpdatePhoneNumberCall();
  static DeletePhoneCall deletePhoneCall = DeletePhoneCall();
}

class CreateAssitantCall {
  Future<ApiCallResponse> call({
    String? systemPrompt = '',
    String? firstMessage = '',
    String? assistantName = '',
    String? language = '',
  }) async {
    final baseUrl = VapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": {
    "messages": [
      {
        "content": "${escapeStringForJson(systemPrompt)}",
        "role": "system"
      }
    ],
    "provider": "openai",
    "model": "gpt-4o",
    "fallbackModels": [
      "gpt-4-0125-preview",
      "gpt-4-0613"
    ],
    "semanticCachingEnabled": true,
    "numFastTurns": 1,
    "temperature": 0.7,
    "maxTokens": 250,
    "emotionRecognitionEnabled": true
  },
  "voice": {
    "inputPreprocessingEnabled": true,
    "inputMinCharacters": 10,
    "inputPunctuationBoundaries": [
      "。",
      "，",
      ".",
      "!",
      "?",
      ";",
      ")",
      "،",
      "۔",
      "।",
      "॥",
      "|",
      "||",
      ",",
      ":"
    ],
    "fillerInjectionEnabled": true,
    "provider": "azure",
    "voiceId": "emma",
    "speed": 1
  },
  "firstMessageMode": "assistant-speaks-first",
  "recordingEnabled": true,
  "hipaaEnabled": false,
  "clientMessages": [
    "transcript",
    "hang",
    "tool-calls",
    "speech-update",
    "metadata",
    "conversation-update"
  ],
  "serverMessages": [
    "end-of-call-report",
    "status-update",
    "hang",
    "tool-calls"
  ],
  "silenceTimeoutSeconds": 30,
  "responseDelaySeconds": 0.4,
  "llmRequestDelaySeconds": 0.1,
  "numWordsToInterruptAssistant": 1,
  "maxDurationSeconds": 1800,
  "backgroundSound": "off",
  "backchannelingEnabled": true,
  "name": "${escapeStringForJson(assistantName)}",
  "firstMessage": "${escapeStringForJson(firstMessage)}",
  "transcriber": {
    "provider": "deepgram",
    "model": "nova-2",
    "language": "${escapeStringForJson(language)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAssitant',
      apiUrl: '${baseUrl}assistant',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
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

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.name''',
      );
}

class BuyNumberCall {
  Future<ApiCallResponse> call({
    String? code = '',
    String? name = '',
    String? assistantId = '',
  }) async {
    final baseUrl = VapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "areaCode": "${escapeStringForJson(code)}",
  "name": "${escapeStringForJson(name)}",
  "assistantId": "${escapeStringForJson(assistantId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Buy Number',
      apiUrl: '${baseUrl}phone-number/buy',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
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

  dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic number(dynamic response) => getJsonField(
        response,
        r'''$.number''',
      );
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ListPhoneCallsCall {
  Future<ApiCallResponse> call({
    String? assistantId = '',
  }) async {
    final baseUrl = VapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'List Phone Calls',
      apiUrl: '${baseUrl}call',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
      },
      params: {
        'assistantId': assistantId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? callid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  List<String>? callStart(dynamic response) => (getJsonField(
        response,
        r'''$[:].startedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? callEnd(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].endedAt''',
      ));
  String? endReason(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].endedReason''',
      ));
  String? assistantId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].assistantId''',
      ));
  String? recordingUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].recordingUrl''',
      ));
  List? messageDetails(dynamic response) => getJsonField(
        response,
        r'''$[:].messages''',
        true,
      ) as List?;
}

class GetPhoneCallDetailsCall {
  Future<ApiCallResponse> call({
    String? callId = '',
  }) async {
    final baseUrl = VapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'get phone call details',
      apiUrl: '${baseUrl}call/${callId}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
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
}

class DeleteAssistantCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = VapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deleteAssistant',
      apiUrl: '${baseUrl}assistant/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
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
}

class UpdateAssistantCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? firstMessage = '',
    String? systemPrompt = '',
    String? assistantName = '',
    String? language = '',
  }) async {
    final baseUrl = VapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "model": {
    "messages": [
      {
        "content": "${escapeStringForJson(systemPrompt)}",
        "role": "system"
      }
    ],
    "provider": "openai",
    "model": "gpt-4o",
    "fallbackModels": [
      "gpt-4-0125-preview",
      "gpt-4-0613"
    ],
    "semanticCachingEnabled": true,
    "numFastTurns": 1,
    "temperature": 0.7,
    "maxTokens": 250,
    "emotionRecognitionEnabled": true
  },
  "voice": {
    "inputPreprocessingEnabled": true,
    "inputMinCharacters": 10,
    "inputPunctuationBoundaries": [
      "。",
      "，",
      ".",
      "!",
      "?",
      ";",
      ")",
      "،",
      "۔",
      "।",
      "॥",
      "|",
      "||",
      ",",
      ":"
    ],
    "fillerInjectionEnabled": true,
    "provider": "azure",
    "voiceId": "emma",
    "speed": 1
  },
  "firstMessageMode": "assistant-speaks-first",
  "recordingEnabled": true,
  "hipaaEnabled": false,
  "clientMessages": [
    "transcript",
    "hang",
    "tool-calls",
    "speech-update",
    "metadata",
    "conversation-update"
  ],
  "serverMessages": [
    "end-of-call-report",
    "status-update",
    "hang",
    "tool-calls"
  ],
  "silenceTimeoutSeconds": 30,
  "responseDelaySeconds": 0.4,
  "llmRequestDelaySeconds": 0.1,
  "numWordsToInterruptAssistant": 1,
  "maxDurationSeconds": 1800,
  "backgroundSound": "off",
  "backchannelingEnabled": true,
  "name": "${escapeStringForJson(assistantName)}",
  "firstMessage": "${escapeStringForJson(firstMessage)}",
  "transcriber": {
    "provider": "deepgram",
    "model": "nova-2",
    "language": "${escapeStringForJson(language)}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateAssistant',
      apiUrl: '${baseUrl}assistant/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
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

class UpdatePhoneNumberCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? assistantId = '',
  }) async {
    final baseUrl = VapiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "assistantId": "${escapeStringForJson(assistantId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updatePhoneNumber',
      apiUrl: '${baseUrl}phone-number/${id}',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
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

class DeletePhoneCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = VapiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'deletePhone',
      apiUrl: '${baseUrl}phone-number/${id}',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization': 'Bearer 337dfe7b-b38c-42f8-8677-7f6e3d5fb60a',
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
}

/// End Vapi Group Code

class SendASMSCall {
  static Future<ApiCallResponse> call({
    String? smsMessage = 'A text message sent using the Vonage SMS API',
    String? phoneNumber = '447360518292',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Send a SMS',
      apiUrl: 'https://rest.nexmo.com/sms/json',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'from': " Vonage APIs",
        'text': smsMessage,
        'to': phoneNumber,
        'api_key': "4e01f3f1",
        'api_secret': "0WiGD0vpXeARP3M9",
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? messages(dynamic response) => getJsonField(
        response,
        r'''$.messages''',
        true,
      ) as List?;
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
  if (item is DocumentReference) {
    return item.path;
  }
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
