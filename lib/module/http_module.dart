import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart' as http;

class HttpModule {
  // TODO: Context 및 환경 분기 처리 필요
  static final String _contentsTypeApplicationJson = 'application/json';
  final Map<String, String> _defaultHeaders = {HttpHeaders.contentTypeHeader: _contentsTypeApplicationJson, "deviceId" : '', "buildNum": ''};

  // External api
  Future<http.Response> get(Uri url, {Map<String, String> headers}) {
    return http.get(url, headers: _setSignHeader("GET", url, _defaultHeaders, headers));
  }

  /// signHeader
  Map<String, String> _setSignHeader(String method, Uri url, Map<String, String> defaultHeader,  Map<String, String> header){
    String timestamp = (DateTime.now().millisecondsSinceEpoch ~/1000 ~/60).floor().toString();
    return {
      "bztimestamp" : timestamp,
      "bzsignature" : _getSignatureKey(method, url.path, timestamp),
      ...? defaultHeader,
      ...? header,
    };
  }

  ///메시지 키 생성
  String _getSignatureKey(String method, String uri, String timestamp) {
    var key = utf8.encode('cfba97661a6d47788df4e036f522316a'); /// signing key
    var signingKey = new Hmac(sha256, key);

    var bytes = utf8.encode('${method.toUpperCase()}_${uri}_${timestamp}');
    var digest = signingKey.convert(bytes);
    String signatureKey = base64.encode(digest.bytes);
    return signatureKey;
  }
}
