import 'package:gametv/Modules/Home/Models/ImageList.dart';
import 'package:gametv/Modules/Utils/Constants.dart';
import 'package:gametv/Services/ApiProvider.dart';

class Service {
  static Future<List<ImageList>> getImages({String page}) async {
    String url = '';
    if (page != null) {
      url = url + "?page=$page";
    }
    try {
      var response = await ApiProvider.get(url);
      if (response.isNotEmpty) {
        return response;
      } else {
        return throw Exception(SOMETHING_WENT_WRONG);
      }
    } catch (error) {
      return throw Exception(error);
    }
  }
}
