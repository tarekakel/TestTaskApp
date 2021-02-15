import 'package:gametv/Modules/Home/Models/ImageList.dart';
import 'package:gametv/Modules/Utils/Constants.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';
import 'dart:async';

import 'APIExceptionns.dart';

class ApiProvider {
  static Future<List<ImageList>> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(BASE_URLL + url);

      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  static dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        return json
            .decode(response.body)
            .cast<Map<String, dynamic>>()
            .map<ImageList>((img) => ImageList.fromJson(img))
            .toList();
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:

      default:
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}
